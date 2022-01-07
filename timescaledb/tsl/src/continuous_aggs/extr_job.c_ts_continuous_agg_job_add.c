
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int NameData ;
typedef int Interval ;


 int DEFAULT_MAX_RETRIES ;
 int DEFAULT_MAX_RUNTIME ;
 int * continuous_agg_job_get_default_schedule_interval (int ,int ) ;
 int namestrcpy (int *,char*) ;
 int ts_bgw_job_insert_relation (int *,int *,int *,int ,int ,int *) ;

int32
ts_continuous_agg_job_add(int32 raw_table_id, int64 bucket_width, Interval *refresh_interval)
{
 NameData application_name;
 NameData job_type;
 int32 job_id;

 namestrcpy(&job_type, "continuous_aggregate");
 namestrcpy(&application_name, "Continuous Aggregate Background Job");

 if (refresh_interval == ((void*)0))
  refresh_interval =
   continuous_agg_job_get_default_schedule_interval(raw_table_id, bucket_width);

 job_id = ts_bgw_job_insert_relation(&application_name,
          &job_type,
          refresh_interval,
          DEFAULT_MAX_RUNTIME,
          DEFAULT_MAX_RETRIES,
          refresh_interval);
 return job_id;
}
