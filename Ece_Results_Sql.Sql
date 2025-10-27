SELECT * FROM snist.ece;
#drop table snist.ece;
select count(*) as total_students_in_Ece from snist.ece;
select max(sgpa) from snist.ece;

select roll_number,student_name,section,sgpa,cgpa from snist.ece where cgpa=(select max(cgpa) from snist.ece);
select count(distinct section) from ece;
desc snist.ece;

select Student_name  from  snist.ece
 where Roll_Number='22311A04N0'; 
 
 select Section,count(*)as total_students from snist.ece
 group by Section;
 
 /*update snist.ece
 set Section='F'
 where roll_number='22311A04CA';*/
#select (489 * (489 + 1) / 2-sum(s_no)) from ece;
/*update ece
set s_no=s_no - 1 where s_no > 46;*/

 update snist.ece
 set section='-',Student_name='-',Roll_Number='-',Total='-',Total='-',BackLogs='-',Credits='-',SGPA='-',Sem_Status='-',CGPA='-'
 where 9CC05_INT='INT 40';
 show columns from snist.ece;

select 
min(case when sgpa then sgpa end) as min_sgpa,
max(case when sgpa then sgpa end) as max_sgpa from snist.ece;
select 
min(case when cgpa then cgpa end) as min_cgpa,
max(case when cgpa then cgpa end) as max_cgpa from snist.ece;

select 
count(case when sem_status='Pass' then 1 end) as pass_count,
count(case when sem_status='Fail' then 1 end) as fail_count from snist.ece;
select roll_number,section,student_name,backlogs,sgpa,cgpa from snist.ece where backlogs=(select max(backlogs) from snist.ece);
select roll_number,student_name,section,backlogs,sgpa,cgpa  from snist.ece where credits=21 and sem_status='fail';
select count(*) from snist.ece where sgpa>cgpa;
select count(*) from snist.ece where sgpa<cgpa;
select roll_number,student_name,section,sgpa from snist.ece where sgpa=cgpa;
select round(avg(sgpa),2) from snist.ece;
select round(avg(cgpa),2) from snist.ece;
select count(*) from snist.ece where sgpa>(select avg(sgpa) from snist.ece); 
select count(*) from snist.ece where sem_status='fail' and backlogs=0;
select count(*) from snist.ece where sem_status='pass' and backlogs>0;
select backlogs,count(*) as total_count from snist.ece group by backlogs order by total_count desc;
SELECT Roll_Number, student_name,section,sgpa,backlogs FROM snist.ece where  SGPA > 9 and BackLogs > 0;
select section,count(*) as cgpa_9 from snist.ece where cgpa>=9 group by section order by cgpa_9 desc;
select * from snist.ece where  CONCAT_WS(' ', `9CC05_INT`, `9CC05_EXT`, `9CC05_TOT`,`9HC16_INT`, `9HC16_EXT`, `9HC16_TOT`,`9HC05_INT`, `9HC05_EXT`, `9HC05_TOT`,
`9CC04_INT`, `9CC04_EXT`, `9CC04_TOT`,`9C407_INT`, `9C407_EXT`, `9C407_TOT`) like '%Ab%';

select section,
count(case when sgpa>=9 then 1 end) as sgpa_9,
count(case when sgpa between 8 and 8.99 then 1 end) as sgpa_8,
count(case when sgpa between 7 and 7.99 then 1 end) as sgpa_7,
count(case when sgpa between 0 and 6.99 then 1 end) as sgpa from snist.ece group by section;

select
count(case when sgpa>=9 then 1 end) as sgpa_9,
count(case when sgpa>=8 and sgpa<9 then 1 end) as sgpa_8,
count(case when sgpa>=7 and sgpa<8 then 1 end) as sgpa_7,
count(case when sgpa>0 and sgpa<7 then 1 end) as sgpa from snist.ece;

select round(avg(Total_Percentage),2) from snist.ece;
select section,round(avg(sgpa),2) from snist.ece group by section;
select count(*) from snist.ece where Total_Percentage<=50;
select count(*) from ece where credits<21;
select roll_number,student_name,section,sgpa,cgpa from snist.ece order by sgpa desc limit 10;
select roll_number,student_name,section,sgpa,cgpa from snist.ece order by cgpa desc limit 10;


SELECT roll_number, student_name, section, sgpa
FROM snist.ece s 
WHERE sgpa = (select MAX(sgpa) from snist.ece where  section = s.section) group by section, roll_number, student_name, sgpa order by sgpa desc;

select count(*) from ece where sgpa<(select avg(sgpa) from ece);
select roll_number,student_name,section,sgpa from ece where sgpa<(select avg(sgpa) from ece) order by section;
select section,count(case when backlogs>0 then backlogs end) as backlogs from ece group by section;
select roll_number,student_name,section,sgpa,rank() over (order by sgpa desc)  as rnk from ece;
select roll_number,student_name,section,sgpa,rank() over (partition by section order by sgpa desc)  as rnk from ece;
select roll_number,student_name,section,sgpa from ece s where sgpa>(select avg(sgpa) from ece where section=s.section);

SELECT *,case
when sgpa >= 9 then 'Excellent'
when sgpa >= 8 then 'Very Good'
when sgpa >= 7 then 'Good'
When sgpa >= 6 then 'Average'
ELSE 'Needs Improvement'
end as sgpa_category from ece;

select section,round(avg(sgpa),2) as avg_sgpa from ece group by section order by avg_sgpa desc;
select roll_number,student_name,section,9CC05_Int,9CC05_ext,9CC05_TOT from ece order by 9CC05_tot desc limit 1;
select roll_number,student_name,section,9Hc16_Int,9Hc16_ext,9Hc16_TOT from ece order by 9Hc16_tot desc limit 1;
select roll_number,student_name,section,9Hc05_Int,9Hc05_ext,9Hc05_TOT from ece order by 9Hc05_tot desc limit 1;
select roll_number,student_name,section,9CC04_Int,9CC04_ext,9CC04_TOT from ece order by 9CC04_tot desc limit 1;
select roll_number,student_name,section,9CC06_Int,9CC06_ext,9CC06_TOT from ece order by 9CC06_tot desc limit 1;
select roll_number,student_name,section,9C407_Int,9C407_ext,9C407_TOT from ece order by 9C407_tot desc limit 1;
select roll_number,student_name,section,9CC72_Int,9CC72_ext,9CC72_TOT from ece order by 9CC72_tot desc limit 1;
select roll_number,student_name,section,9C473_Int,9C473_ext,9C473_TOT from ece where 9C473_tot=(select max(9c473_TOT) from ece);
select roll_number,student_name,section,9CC74_Int,9CC74_ext,9CC74_TOT from ece where 9CC74_tot=(select max(9CC74_TOT) from ece);
select roll_number,student_name,section,9C461_Int from ece where 9C461_int=(select max(9C461_int) from ece);


select  '9CC05_TOT'as subject_code,round(avg(9CC05_TOT),2) as avg_marks from ece group by '9CC05_TOT'  
union all
select  '9Hc16_TOT' ,round(avg(9Hc16_TOT),2)  from ece group by '9Hc16_TOT'
union all
select  '9Hc05_TOT',round(avg(9Hc05_TOT),2) from ece group by '9Hc05_TOT'
union all
select  '9cc04_TOT',round(avg(9CC04_TOT),2) from ece group by '9Hcc04_TOT'
union all
select  '9cc06_TOT',round(avg(9CC06_TOT),2) from ece group by '9cc06TOT'
union all
select  '9c407_TOT',round(avg(9C407_tot ),2) from ece group by '9c407TOT'
union all
select  '9cc72_TOT',round(avg(9CC72_tot),2) from ece group by '9cc72TOT'
union all
select  '9c473TOT',round(avg(9C473_tot),2) from ece group by '9c473_TOT'
union all
select  '9cc74TOT',round(avg(9CC74_tot),2) from ece group by '9cc74_TOT'
union all
select  '9c461_int',round(avg(9C461_int),2) from ece group by '9c461_int';



select section,count(case when sem_status='pass' then 1 end) as pass_count,
count(case when sem_status='fail' then 1 end) as fail_count from ece group by section;

select sem_status,count(*) AS count,round((count(*) * 100.0 / (select count(*) from ece)), 2) AS percentage
from ece group by sem_status;
select roll_number,student_name,section,sgpa,cgpa from ece where sem_status='Fail'; 

select * from (
select *, NTILE(20)  over  (order by SGPA desc) as  top_5Percentile from ece
) sub where Percentile = 1;

select * from (
select *, NTILE(10)  over  (order by SGPA  asc) as  below_10Percentile from ece
) sub where Percentile = 1;

select section,
count(case when sem_status='pass' then 1 end) as pass_count,
count(case when sem_status='fail' then 1 end) as fail_count from ece group by section;

select * from snist.ece;









