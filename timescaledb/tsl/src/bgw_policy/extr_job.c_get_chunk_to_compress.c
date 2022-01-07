
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_8__ {int id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int space; } ;
typedef int StrategyNumber ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef int FormData_ts_interval ;
typedef TYPE_3__ Dimension ;


 int BTLessStrategyNumber ;
 int InvalidStrategy ;
 TYPE_3__* hyperspace_get_open_dimension (int ,int ) ;
 int ts_dimension_get_partition_type (TYPE_3__*) ;
 int ts_dimension_slice_get_chunkid_to_compress (int ,int ,int,int ,int ) ;
 int ts_interval_subtract_from_now (int *,TYPE_3__*) ;
 int ts_time_value_to_internal (int ,int ) ;

__attribute__((used)) static int32
get_chunk_to_compress(Hypertable *ht, FormData_ts_interval *older_than)
{
 Dimension *open_dim = hyperspace_get_open_dimension(ht->space, 0);
 StrategyNumber end_strategy = BTLessStrategyNumber;
 Oid partitioning_type = ts_dimension_get_partition_type(open_dim);
 int64 end_value = ts_time_value_to_internal(ts_interval_subtract_from_now(older_than, open_dim),
            partitioning_type);
 return ts_dimension_slice_get_chunkid_to_compress(open_dim->fd.id,
               InvalidStrategy,
               -1,
               end_strategy,
               end_value);
}
