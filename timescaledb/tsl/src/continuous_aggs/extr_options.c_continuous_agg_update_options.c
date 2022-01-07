
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_18__ {int is_default; int parsed; } ;
typedef TYPE_3__ WithClauseResult ;
struct TYPE_16__ {void* retry_period; void* schedule_interval; } ;
struct TYPE_21__ {TYPE_1__ fd; } ;
struct TYPE_17__ {int job_id; int bucket_width; int raw_hypertable_id; } ;
struct TYPE_20__ {TYPE_2__ data; } ;
struct TYPE_19__ {int space; } ;
typedef TYPE_4__ Hypertable ;
typedef int Dimension ;
typedef TYPE_5__ ContinuousAgg ;
typedef int Cache ;
typedef TYPE_6__ BgwJob ;


 size_t ContinuousEnabled ;
 size_t ContinuousViewOptionCreateGroupIndex ;
 size_t ContinuousViewOptionMaxIntervalPerRun ;
 size_t ContinuousViewOptionRefreshInterval ;
 size_t ContinuousViewOptionRefreshLag ;
 int CurrentMemoryContext ;
 void** DatumGetIntervalP (int ) ;
 int ERROR ;
 int continuous_agg_parse_max_interval_per_job (int ,TYPE_3__*,int ) ;
 int continuous_agg_parse_refresh_lag (int ,TYPE_3__*) ;
 int elog (int ,char*) ;
 int * hyperspace_get_open_dimension (int ,int ) ;
 TYPE_6__* ts_bgw_job_find (int ,int ,int) ;
 int ts_bgw_job_update_by_id (int ,TYPE_6__*) ;
 int ts_cache_release (int *) ;
 int ts_dimension_get_partition_type (int *) ;
 TYPE_4__* ts_hypertable_cache_get_entry_by_id (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int update_max_interval_per_job (TYPE_5__*,int ) ;
 int update_refresh_lag (TYPE_5__*,int ) ;

void
continuous_agg_update_options(ContinuousAgg *agg, WithClauseResult *with_clause_options)
{
 if (!with_clause_options[ContinuousEnabled].is_default)
  elog(ERROR, "cannot disable continuous aggregates");

 if (!with_clause_options[ContinuousViewOptionRefreshLag].is_default)
 {
  Cache *hcache = ts_hypertable_cache_pin();
  Hypertable *ht = ts_hypertable_cache_get_entry_by_id(hcache, agg->data.raw_hypertable_id);
  Dimension *time_dimension = hyperspace_get_open_dimension(ht->space, 0);
  int64 lag =
   continuous_agg_parse_refresh_lag(ts_dimension_get_partition_type(time_dimension),
            with_clause_options);
  update_refresh_lag(agg, lag);
  ts_cache_release(hcache);
 }

 if (!with_clause_options[ContinuousViewOptionMaxIntervalPerRun].is_default)
 {
  Cache *hcache = ts_hypertable_cache_pin();
  Hypertable *ht = ts_hypertable_cache_get_entry_by_id(hcache, agg->data.raw_hypertable_id);
  Dimension *time_dimension = hyperspace_get_open_dimension(ht->space, 0);
  int64 max = continuous_agg_parse_max_interval_per_job(ts_dimension_get_partition_type(
                  time_dimension),
                 with_clause_options,
                 agg->data.bucket_width);
  update_max_interval_per_job(agg, max);
  ts_cache_release(hcache);
 }

 if (!with_clause_options[ContinuousViewOptionRefreshInterval].is_default)
 {
  BgwJob *job = ts_bgw_job_find(agg->data.job_id, CurrentMemoryContext, 1);
  job->fd.schedule_interval =
   *DatumGetIntervalP(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
  job->fd.retry_period =
   *DatumGetIntervalP(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
  ts_bgw_job_update_by_id(agg->data.job_id, job);
 }
 if (!with_clause_options[ContinuousViewOptionCreateGroupIndex].is_default)
 {
  elog(ERROR, "cannot alter create_group_indexes option for continuous aggregates");
 }
}
