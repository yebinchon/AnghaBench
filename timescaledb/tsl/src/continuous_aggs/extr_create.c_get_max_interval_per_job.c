
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {scalar_t__ is_default; } ;
typedef TYPE_1__ WithClauseResult ;
typedef int Oid ;


 size_t ContinuousViewOptionMaxIntervalPerRun ;
 int DEFAULT_MAX_INTERVAL_MAX_BUCKET_WIDTH ;
 int DEFAULT_MAX_INTERVAL_MULTIPLIER ;
 int PG_INT64_MAX ;
 int continuous_agg_parse_max_interval_per_job (int ,TYPE_1__*,int) ;

__attribute__((used)) static int64
get_max_interval_per_job(Oid column_type, WithClauseResult *with_clause_options, int64 bucket_width)
{
 if (with_clause_options[ContinuousViewOptionMaxIntervalPerRun].is_default)
 {
  return (bucket_width < DEFAULT_MAX_INTERVAL_MAX_BUCKET_WIDTH) ?
       DEFAULT_MAX_INTERVAL_MULTIPLIER * bucket_width :
       PG_INT64_MAX;
 }
 return continuous_agg_parse_max_interval_per_job(column_type,
              with_clause_options,
              bucket_width);
}
