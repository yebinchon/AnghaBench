
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {int chunk_id; int job_id; } ;
typedef int StrategyNumber ;
typedef TYPE_1__ ChunkStatInfo ;


 int dimension_slice_check_chunk_stats_tuple_found ;
 int dimension_slice_scan_with_strategies (int ,int ,int ,int ,int ,TYPE_1__*,int ,int) ;

int
ts_dimension_slice_oldest_chunk_without_executed_job(int32 job_id, int32 dimension_id,
              StrategyNumber start_strategy,
              int64 start_value, StrategyNumber end_strategy,
              int64 end_value)
{
 ChunkStatInfo info = {
  .job_id = job_id,
  .chunk_id = -1,
 };

 dimension_slice_scan_with_strategies(dimension_id,
           start_strategy,
           start_value,
           end_strategy,
           end_value,
           &info,
           dimension_slice_check_chunk_stats_tuple_found,
           -1);

 return info.chunk_id;
}
