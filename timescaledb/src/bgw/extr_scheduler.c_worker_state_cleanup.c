
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int reserved_worker; int may_need_mark_end; TYPE_2__ job; int * handle; } ;
typedef TYPE_3__ ScheduledBgwJob ;
typedef int BgwJobStat ;


 int Assert (int ) ;
 int CurrentMemoryContext ;
 int JOB_FAILURE ;
 int WARNING ;
 int assert_that_worker_has_stopped (TYPE_3__*) ;
 int elog (int ,char*,int ) ;
 int mark_job_as_ended (TYPE_3__*,int ) ;
 int pfree (int *) ;
 int ts_bgw_job_get_share_lock (int ,int ) ;
 int ts_bgw_job_stat_end_was_marked (int *) ;
 int * ts_bgw_job_stat_find (int ) ;
 int ts_bgw_worker_release () ;

__attribute__((used)) static void
worker_state_cleanup(ScheduledBgwJob *sjob)
{




 if (sjob->handle != ((void*)0))
 {




  pfree(sjob->handle);
  sjob->handle = ((void*)0);
 }





 if (sjob->reserved_worker)
 {
  ts_bgw_worker_release();
  sjob->reserved_worker = 0;
 }

 if (sjob->may_need_mark_end)
 {
  BgwJobStat *job_stat;

  if (!ts_bgw_job_get_share_lock(sjob->job.fd.id, CurrentMemoryContext))
  {
   elog(WARNING,
     "scheduler detected that job %d was deleted after job quit",
     sjob->job.fd.id);
   sjob->may_need_mark_end = 0;
   return;
  }

  job_stat = ts_bgw_job_stat_find(sjob->job.fd.id);

  Assert(job_stat != ((void*)0));

  if (!ts_bgw_job_stat_end_was_marked(job_stat))
  {





   mark_job_as_ended(sjob, JOB_FAILURE);

   job_stat = ts_bgw_job_stat_find(sjob->job.fd.id);
  }
  else
  {
   sjob->may_need_mark_end = 0;
  }
 }
}
