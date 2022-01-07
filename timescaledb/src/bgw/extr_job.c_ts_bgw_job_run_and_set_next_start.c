
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int (* job_main_func ) () ;
typedef scalar_t__ int64 ;
typedef int TimestampTz ;
struct TYPE_8__ {int id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ total_runs; int last_start; } ;
struct TYPE_10__ {TYPE_2__ fd; } ;
typedef int Interval ;
typedef TYPE_3__ BgwJobStat ;
typedef TYPE_4__ BgwJob ;


 int CommitTransactionCommand () ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (int *) ;
 int StartTransactionCommand () ;
 int TimestampTzGetDatum (int ) ;
 int timestamptz_pl_interval ;
 TYPE_3__* ts_bgw_job_stat_find (int ) ;
 int ts_bgw_job_stat_set_next_start (TYPE_4__*,int ) ;

bool
ts_bgw_job_run_and_set_next_start(BgwJob *job, job_main_func func, int64 initial_runs,
          Interval *next_interval)
{
 BgwJobStat *job_stat;
 bool ret = func();


 StartTransactionCommand();

 job_stat = ts_bgw_job_stat_find(job->fd.id);





 if (job_stat->fd.total_runs < initial_runs)
 {
  TimestampTz next_start =
   DatumGetTimestampTz(DirectFunctionCall2(timestamptz_pl_interval,
             TimestampTzGetDatum(job_stat->fd.last_start),
             IntervalPGetDatum(next_interval)));

  ts_bgw_job_stat_set_next_start(job, next_start);
 }
 CommitTransactionCommand();

 return ret;
}
