
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int scanrel; int tuple; } ;
typedef TYPE_3__ TupleInfo ;
typedef int TimestampTz ;
struct TYPE_12__ {int retry_period; int max_retries; int max_runtime; int schedule_interval; } ;
struct TYPE_16__ {TYPE_2__ fd; } ;
struct TYPE_11__ {int last_finish; } ;
struct TYPE_15__ {TYPE_1__ fd; } ;
struct TYPE_14__ {int retry_period; int max_retries; int max_runtime; int schedule_interval; int id; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_4__ FormData_bgw_job ;
typedef TYPE_5__ BgwJobStat ;
typedef TYPE_6__ BgwJob ;


 int DatumGetBool (int ) ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 int IntervalPGetDatum (int *) ;
 int SCAN_DONE ;
 int TimestampTzGetDatum (int ) ;
 int heap_copytuple (int ) ;
 int heap_freetuple (int ) ;
 int interval_eq ;
 int timestamptz_pl_interval ;
 int ts_bgw_job_permission_check (TYPE_6__*) ;
 TYPE_5__* ts_bgw_job_stat_find (int ) ;
 int ts_bgw_job_stat_update_next_start (TYPE_6__*,int ,int) ;
 int ts_catalog_update (int ,int ) ;

__attribute__((used)) static ScanTupleResult
bgw_job_tuple_update_by_id(TupleInfo *ti, void *const data)
{
 BgwJob *updated_job = (BgwJob *) data;
 HeapTuple tuple = heap_copytuple(ti->tuple);
 FormData_bgw_job *fd = (FormData_bgw_job *) GETSTRUCT(tuple);
 TimestampTz next_start;

 ts_bgw_job_permission_check(updated_job);

 if (!DatumGetBool(DirectFunctionCall2(interval_eq,
            IntervalPGetDatum(&fd->schedule_interval),
            IntervalPGetDatum(&updated_job->fd.schedule_interval))))
 {
  BgwJobStat *stat = ts_bgw_job_stat_find(fd->id);

  if (stat != ((void*)0))
  {
   next_start = DatumGetTimestampTz(
    DirectFunctionCall2(timestamptz_pl_interval,
         TimestampTzGetDatum(stat->fd.last_finish),
         IntervalPGetDatum(&updated_job->fd.schedule_interval)));



   ts_bgw_job_stat_update_next_start(updated_job, next_start, 1);
  }
  fd->schedule_interval = updated_job->fd.schedule_interval;
 }
 fd->max_runtime = updated_job->fd.max_runtime;
 fd->max_retries = updated_job->fd.max_retries;
 fd->retry_period = updated_job->fd.retry_period;

 ts_catalog_update(ti->scanrel, tuple);
 heap_freetuple(tuple);
 return SCAN_DONE;
}
