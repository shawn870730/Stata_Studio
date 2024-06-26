# Kindergarten Scholarship Data Analysis

## Overview

This project involves analyzing data from an experiment where children were given scholarships to attend kindergarten. The data task includes processing and analyzing data to draw insights about the impact of these scholarships on children's educational outcomes.

## Data Description

The project utilizes three CSV files:

1. **baseline.csv**: Contains children's ID numbers, baseline test scores, and treatment status (whether they were offered a scholarship).
2. **endline_parent.csv**: Includes children's ID numbers and the educational attainment (years of education) of their primary guardians, measured two years after the baseline.
3. **endline_child.csv**: Contains children's ID numbers and indicators for whether they answered questions correctly on a Matrix Reasoning test conducted two years after the baseline.

## Objectives

The analysis aims to address the following tasks:

1. **Attrition Analysis**: Provide a table describing the attrition between baseline and endline.
2. **Guardian Education**: Calculate the percentage of guardians with less than 8 years of education.
3. **Reasoning Test Difficulty**: Graph the percentage correct on each of the Matrix Reasoning test questions to assess whether the questions become more difficult as the test progresses.
4. **Treatment Effects**: Generate the average percent correct on the Matrix Reasoning test, regress this on treatment while controlling for baseline test scores, and interpret the regression results.

## Findings

### 1. Attrition Analysis

The analysis revealed that 12 children dropped out before the endline test, with 5 from the treatment group and 7 from the control group. The baseline mean scores suggest that children with lower baseline scores may be more likely to drop out, although this effect was not statistically significant.

### 2. Guardian Education

The analysis showed that a significant portion of the guardians' education data is missing. Among the available data, approximately 24.7% of guardians have less than 8 years of education.

### 3. Reasoning Test Difficulty

The graph of the percentage correct on each Matrix Reasoning test question confirmed that the questions became more difficult as the test progressed.

### 4. Treatment Effects

The regression analysis indicated that children who received scholarships showed an increase in their reasoning test scores. The treatment effect was positive, with a significant increase in the mean score, suggesting the scholarship had a beneficial impact on the children's cognitive development.

## Code

The complete code used for this analysis is included in the repository. The code is structured and commented to ensure clarity and reproducibility of the results.
