
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int result; TYPE_3__* job; } ;
typedef TYPE_2__ JobResultCtx ;
typedef int JobResult ;
typedef TYPE_3__ BgwJob ;


 int ERROR ;
 int RowExclusiveLock ;
 int bgw_job_stat_scan_job_id (int ,int ,int *,TYPE_2__*,int ) ;
 int bgw_job_stat_tuple_mark_end ;
 int elog (int ,char*,int ) ;

void
ts_bgw_job_stat_mark_end(BgwJob *job, JobResult result)
{
 JobResultCtx res = {
  .job = job,
  .result = result,
 };

 if (!bgw_job_stat_scan_job_id(job->fd.id,
          bgw_job_stat_tuple_mark_end,
          ((void*)0),
          &res,
          RowExclusiveLock))
  elog(ERROR, "unable to find job statistics for job %d", job->fd.id);
}
