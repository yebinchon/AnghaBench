
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {int parsed; int is_default; } ;
typedef TYPE_1__ WithClauseResult ;
typedef int Oid ;


 int Assert (int) ;
 size_t ContinuousViewOptionMaxIntervalPerRun ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ parse_interval (char*,int ,char*) ;

int64
continuous_agg_parse_max_interval_per_job(Oid column_type, WithClauseResult *with_clause_options,
            int64 bucket_width)
{
 char *value;
 int64 result;

 Assert(!with_clause_options[ContinuousViewOptionMaxIntervalPerRun].is_default);

 value = TextDatumGetCString(with_clause_options[ContinuousViewOptionMaxIntervalPerRun].parsed);

 result = parse_interval(value, column_type, "max_interval_per_job");

 if (result < bucket_width)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("parameter timescaledb.max_interval_per_job must be at least the size "
      "of the time_bucket width")));
 return result;
}
