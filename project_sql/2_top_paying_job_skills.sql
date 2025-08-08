WITH top_paying_jobs AS (
SELECT
    job_id,
    job_title,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON Job_postings_fact.company_id = company_dim.company_id    
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Texas' AND
    salary_year_avg IS NOT NULL 
ORDER BY
salary_year_avg DESC
LIMIT 10 
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
salary_year_avg DESC

/*
Most in-demand skills

    SAS tops the list (8 mentions) — suggests strong demand in specialized statistical analysis tools.

    SQL (7 mentions) and Excel (6 mentions) are still core must-have data handling skills.

    Tableau (4 mentions) signals a notable demand for data visualization expertise.

    Oracle (4 mentions) reflects need for database management proficiency.

    Programming & Statistical Tools

    Python (3 mentions) is prominent, though not as dominant as SQL/SAS in this dataset.

    SPSS (2 mentions) and R (2 mentions) still appear for statistical analysis requirements.

    Other tools & supporting tech

    SAP, SQL Server, VBA — point to enterprise-level data management and automation.

    HTML and JavaScript (2 mentions each) — indicate crossover with web data handling and dashboard development.

    Microsoft Office skills like Outlook and Word still surface, highlighting business communication/documentation importance.

Trend takeaway:
The mix shows data analysts are expected to be both data-savvy (SQL, SAS, Python)
and business-ready (Excel, Tableau, Office tools), with some postings valuing web tech 
for visualization or integration.



Most Demanded Skills for Data Analysts in 2023 (based on job postings):

SAS – 8 postings

SQL – 7 postings

Excel – 6 postings

Tableau – 4 postings

Oracle – 4 postings

Python – 3 postings

SPSS – 2 postings

SAP – 2 postings

SQL Server – 2 postings

VBA – 2 postings

R – 2 postings

HTML – 2 postings

JavaScript – 2 postings

Outlook – 2 postings

Word – 2 postings

[
  {
    "job_id": 329062,
    "job_title": "Data Quality & Cataloguing Analyst-Houston, TX",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "112500.0",
    "job_posted_date": "2023-11-28 21:43:36",
    "company_name": "Confidential"
  },
  {
    "job_id": 1646925,
    "job_title": "IT SPECIALIST (DATA MANAGEMENT/SYSTEM ANALYSIS)",
    "job_location": "Texas",
    "job_schedule_type": "Full-time and Part-time",
    "salary_year_avg": "99764.0",
    "job_posted_date": "2023-09-21 07:28:17",
    "company_name": "Air Force Personnel Center"
  },
  {
    "job_id": 394427,
    "job_title": "IT SPECIALIST (DATA MANAGEMENT/SYSTEM ANALYSIS)",
    "job_location": "Texas",
    "job_schedule_type": "Full-time and Part-time",
    "salary_year_avg": "99764.0",
    "job_posted_date": "2023-10-04 07:17:27",
    "company_name": "Air Force Personnel Center"
  },
  {
    "job_id": 765224,
    "job_title": "INDUSTRIAL ENGINEER/ OPERATIONS RESEARCH ANALYST",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "98496.0",
    "job_posted_date": "2023-10-17 06:38:09",
    "company_name": "Navy Systems Management Activity"
  },
  {
    "job_id": 941877,
    "job_title": "Data Analyst (Dallas/Fort Worth Candidates Only. No Sponsorship...",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "97500.0",
    "job_posted_date": "2023-07-25 23:02:03",
    "company_name": "Yoh, A Day & Zimmermann Company"
  },
  {
    "job_id": 1647844,
    "job_title": "Data Management Analyst. Job in Texas LilyLifestyle Jobs",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "91800.0",
    "job_posted_date": "2023-04-05 10:33:30",
    "company_name": "Northrop Grumman"
  },
  {
    "job_id": 64600,
    "job_title": "Data Management Analyst",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "91800.0",
    "job_posted_date": "2023-03-30 14:42:58",
    "company_name": "Northrop Grumman"
  },
  {
    "job_id": 1422439,
    "job_title": "Data Analyst",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-03-13 12:57:02",
    "company_name": "Jobot"
  },
  {
    "job_id": 964012,
    "job_title": "Intmd Assoc Infra Data Analyst- Officer",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "82430.0",
    "job_posted_date": "2023-01-31 19:34:21",
    "company_name": "Citi"
  },
  {
    "job_id": 436345,
    "job_title": "Data Analyst",
    "job_location": "Texas",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-07-25 15:01:44",
    "company_name": "Brooksource"
  }
]

*/
