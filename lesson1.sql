SELECT 
    ps.PatientId
    , ps.Hospital
    , ps.Ward
    , ps.AdmittedDate
    , ps.DischargeDate
    , DATEADD(WEEK, -2, ps.AdmittedDate) as ReminderDate
    , datediff(day, ps.AdmittedDate, ps.DischargeDate)+1 as DaysInHospital
FROM PatientStay ps
where ps.Hospital IN ('kingston','pruh')
order by 
    ps.PatientId DESC


select 
    ps. PatientId
        , ps.AdmittedDate
            , ps.DischargeDate
                , h.HospitalType
                    , ps.Hospital
                        , h.Hospital
                        from PatientStay ps right join DimHospitalBad h on ps.Hospital = h.Hospital




--    AdmittedDate DESC
--    , DischargeDate DESC
-- amd ward in ('day surgery', 'general surgery')
-- and ward LIKE '%surgery'
-- and AdmittedDate  BETWEEN '2024-02-27' and '2024-03-02'



-- select DATEADD(WEEK, -2, '2025-11-06')