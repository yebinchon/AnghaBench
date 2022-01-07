
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scanrel; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_8__ {int last_run_success; scalar_t__ consecutive_failures; int last_finish; int next_start; int total_failures; int last_successful_finish; int total_success; scalar_t__ consecutive_crashes; int total_crashes; int total_duration; int last_start; } ;
struct TYPE_7__ {scalar_t__ result; int job; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__ JobResultCtx ;
typedef int Interval ;
typedef int HeapTuple ;
typedef TYPE_3__ FormData_bgw_job_stat ;


 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 int IntervalPGetDatum (int *) ;
 scalar_t__ JOB_SUCCESS ;
 int SCAN_DONE ;
 int TimestampTzGetDatum (int ) ;
 int bgw_job_stat_next_start_was_set (TYPE_3__*) ;
 int calculate_next_start_on_failure (int ,scalar_t__,int ) ;
 int calculate_next_start_on_success (int ,int ) ;
 int heap_copytuple (int ) ;
 int heap_freetuple (int ) ;
 int interval_pl ;
 int timestamp_mi ;
 int ts_catalog_update (int ,int ) ;
 int ts_timer_get_current_timestamp () ;

__attribute__((used)) static ScanTupleResult
bgw_job_stat_tuple_mark_end(TupleInfo *ti, void *const data)
{
 JobResultCtx *result_ctx = data;
 HeapTuple tuple = heap_copytuple(ti->tuple);
 FormData_bgw_job_stat *fd = (FormData_bgw_job_stat *) GETSTRUCT(tuple);
 Interval *duration;

 fd->last_finish = ts_timer_get_current_timestamp();

 duration = DatumGetIntervalP(DirectFunctionCall2(timestamp_mi,
              TimestampTzGetDatum(fd->last_finish),
              TimestampTzGetDatum(fd->last_start)));
 fd->total_duration =
  *DatumGetIntervalP(DirectFunctionCall2(interval_pl,
              IntervalPGetDatum(&fd->total_duration),
              IntervalPGetDatum(duration)));


 fd->last_run_success = result_ctx->result == JOB_SUCCESS ? 1 : 0;
 fd->total_crashes--;
 fd->consecutive_crashes = 0;

 if (result_ctx->result == JOB_SUCCESS)
 {
  fd->total_success++;
  fd->consecutive_failures = 0;
  fd->last_successful_finish = fd->last_finish;

  if (!bgw_job_stat_next_start_was_set(fd))
   fd->next_start = calculate_next_start_on_success(fd->last_finish, result_ctx->job);
 }
 else
 {
  fd->total_failures++;
  fd->consecutive_failures++;





  if (!bgw_job_stat_next_start_was_set(fd))
   fd->next_start = calculate_next_start_on_failure(fd->last_finish,
                fd->consecutive_failures,
                result_ctx->job);
 }

 ts_catalog_update(ti->scanrel, tuple);
 heap_freetuple(tuple);

 return SCAN_DONE;
}
