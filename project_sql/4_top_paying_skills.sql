SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0)AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Texas' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
Specialized big data and cloud skills drive the highest pay — tools like MongoDB, Spark, Snowflake, Redshift, Go, and NoSQL top the list at ~$112K.
Enterprise analytics and ETL platforms remain lucrative — SSRS, SSIS, SAS, and Oracle skills still command salaries in the mid-to-high $90K range.
Baseline analytics tools are essential but not top salary drivers — SQL, Python, and Excel are widely required, yet sit in the lower pay bands compared to niche or advanced technologies.
*/