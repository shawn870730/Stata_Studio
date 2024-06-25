clear all
capture log close
set more off

import delimited "endline_parent.csv", clear
save "endline_parent", replace

import delimited "endline_child.csv", clear
save "endline_child", replace

import delimited "baseline.csv", clear
merge 1:1 id_child using "endline_parent", nogen
merge 1:1 id_child using "endline_child", nogen

mvdecode _all, mv(-99)
save "merged_data", replace

foreach v of var* {
	drop if missing(`v')
}

gen shortEdu = 0
replace shortEdu = 1 if p_b11_high_edu < 8

table shortEdu, statistic(frequency) statistic(percent)

save "nomiss_data", replace

use merged_data

collapse (mean) c_correct_mat_*

graph bar c_*

use merged_data

egen meanScore = rowmean(c_*)

reg meanScore i.treatment totalscore_all