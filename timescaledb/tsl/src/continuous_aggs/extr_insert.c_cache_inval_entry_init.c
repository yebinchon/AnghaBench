
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int * partitioning; } ;
struct TYPE_7__ {int greatest_modified_value; int lowest_modified_value; int previous_chunk_relid; TYPE_4__ hypertable_open_dimension; int hypertable_relid; } ;
struct TYPE_6__ {int space; int main_table_relid; } ;
typedef int PartitioningInfo ;
typedef TYPE_1__ Hypertable ;
typedef TYPE_2__ ContinuousAggsCacheInvalEntry ;
typedef int Cache ;


 int InvalidOid ;
 int * MemoryContextAllocZero (int ,int) ;
 int PG_INT64_MAX ;
 int PG_INT64_MIN ;
 int continuous_aggs_trigger_mctx ;
 TYPE_4__* hyperspace_get_open_dimension (int ,int ) ;
 int ts_cache_release (int *) ;
 TYPE_1__* ts_hypertable_cache_get_entry_by_id (int *,int ) ;
 int * ts_hypertable_cache_pin () ;

__attribute__((used)) static inline void
cache_inval_entry_init(ContinuousAggsCacheInvalEntry *cache_entry, int32 hypertable_id)
{
 Cache *ht_cache = ts_hypertable_cache_pin();


 Hypertable *ht = ts_hypertable_cache_get_entry_by_id(ht_cache, hypertable_id);
 cache_entry->hypertable_relid = ht->main_table_relid;
 cache_entry->hypertable_open_dimension = *hyperspace_get_open_dimension(ht->space, 0);
 if (cache_entry->hypertable_open_dimension.partitioning != ((void*)0))
 {
  PartitioningInfo *open_dim_part_info =
   MemoryContextAllocZero(continuous_aggs_trigger_mctx, sizeof(*open_dim_part_info));
  *open_dim_part_info = *cache_entry->hypertable_open_dimension.partitioning;
  cache_entry->hypertable_open_dimension.partitioning = open_dim_part_info;
 }
 cache_entry->previous_chunk_relid = InvalidOid;
 cache_entry->lowest_modified_value = PG_INT64_MAX;
 cache_entry->greatest_modified_value = PG_INT64_MIN;
 ts_cache_release(ht_cache);
}
