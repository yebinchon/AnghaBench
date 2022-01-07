
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {int id; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_10__ {int range_start; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {int space; } ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ DimensionSlice ;
typedef TYPE_5__ Dimension ;


 int Assert (int ) ;
 int BTLessEqualStrategyNumber ;
 int InvalidStrategy ;
 int REORDER_SKIP_RECENT_DIM_SLICES_N ;
 TYPE_5__* hyperspace_get_open_dimension (int ,int ) ;
 TYPE_4__* ts_dimension_slice_nth_latest_slice (int ,int ) ;
 int ts_dimension_slice_oldest_chunk_without_executed_job (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
get_chunk_id_to_reorder(int32 job_id, Hypertable *ht)
{
 Dimension *time_dimension = hyperspace_get_open_dimension(ht->space, 0);
 DimensionSlice *nth_dimension =
  ts_dimension_slice_nth_latest_slice(time_dimension->fd.id,
           REORDER_SKIP_RECENT_DIM_SLICES_N);

 if (!nth_dimension)
  return -1;

 Assert(time_dimension != ((void*)0));

 return ts_dimension_slice_oldest_chunk_without_executed_job(job_id,
                time_dimension->fd.id,
                BTLessEqualStrategyNumber,
                nth_dimension->fd.range_start,
                InvalidStrategy,
                -1);
}
