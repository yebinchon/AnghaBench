
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ int64 ;
typedef int int32 ;
struct TYPE_15__ {int table_name; int schema_name; } ;
struct TYPE_18__ {TYPE_2__ fd; int space; } ;
struct TYPE_17__ {scalar_t__ start; scalar_t__ end; int type; } ;
struct TYPE_16__ {int * name; int * schema; } ;
struct TYPE_14__ {int column_name; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
typedef TYPE_3__ SchemaAndName ;
typedef int NameData ;
typedef int List ;
typedef TYPE_4__ InternalTimeRange ;
typedef TYPE_5__ Hypertable ;
typedef int CatalogSecurityContext ;
typedef int Cache ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ PG_INT64_MAX ;
 scalar_t__ PG_INT64_MIN ;
 scalar_t__ completed_threshold_get (int ) ;
 int continuous_aggs_completed_threshold_set (int ,scalar_t__) ;
 int elog (int ,char*) ;
 TYPE_10__* hyperspace_get_open_dimension (int ,int ) ;
 int ts_cache_release (int *) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_dimension_get_partition_type (TYPE_10__*) ;
 TYPE_5__* ts_hypertable_cache_get_entry_by_id (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 scalar_t__ ts_time_bucket_by_type (scalar_t__,scalar_t__,int ) ;
 int update_materializations (TYPE_3__,TYPE_3__,int *,TYPE_4__,scalar_t__,int *) ;

void
continuous_agg_execute_materialization(int64 bucket_width, int32 hypertable_id,
            int32 materialization_id, SchemaAndName partial_view,
            List *invalidations,
            int64 materialization_invalidation_threshold)
{
 CatalogSecurityContext sec_ctx;
 SchemaAndName materialization_table_name;
 InternalTimeRange new_materialization_range = {
  .start = completed_threshold_get(materialization_id),
  .end = materialization_invalidation_threshold,
 };
 Cache *hcache = ts_hypertable_cache_pin();
 Hypertable *raw_table = ts_hypertable_cache_get_entry_by_id(hcache, hypertable_id);
 Hypertable *materialization_table =
  ts_hypertable_cache_get_entry_by_id(hcache, materialization_id);
 NameData time_column_name;

 Assert(new_materialization_range.start <= new_materialization_range.end);

 if (raw_table == ((void*)0))
  elog(ERROR, "can only materialize continuous aggregates on a hypertable");

 if (materialization_table == ((void*)0))
  elog(ERROR, "can only materialize continuous aggregates to a hypertable");



 new_materialization_range.type =
  ts_dimension_get_partition_type(hyperspace_get_open_dimension(raw_table->space, 0));

 time_column_name =
  hyperspace_get_open_dimension(materialization_table->space, 0)->fd.column_name;

 if (new_materialization_range.start > PG_INT64_MIN)
  Assert(new_materialization_range.start ==
      ts_time_bucket_by_type(bucket_width,
           new_materialization_range.start,
           new_materialization_range.type));







 if (new_materialization_range.end < PG_INT64_MAX)
  Assert(new_materialization_range.end ==
      ts_time_bucket_by_type(bucket_width,
           new_materialization_range.end,
           new_materialization_range.type));
 else
  new_materialization_range.end = ts_time_bucket_by_type(bucket_width,
                  new_materialization_range.end,
                  new_materialization_range.type);

 materialization_table_name.schema = &materialization_table->fd.schema_name;
 materialization_table_name.name = &materialization_table->fd.table_name;





 update_materializations(partial_view,
       materialization_table_name,
       &time_column_name,
       new_materialization_range,
       bucket_width,
       invalidations);


 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);

 continuous_aggs_completed_threshold_set(materialization_id, new_materialization_range.end);

 ts_catalog_restore_user(&sec_ctx);
 ts_cache_release(hcache);
 return;
}
