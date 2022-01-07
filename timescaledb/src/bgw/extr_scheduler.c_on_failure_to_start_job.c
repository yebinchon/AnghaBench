
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_9__ {TYPE_2__ job; } ;
typedef TYPE_3__ ScheduledBgwJob ;


 int CommitTransactionCommand () ;
 int CurrentMemoryContext ;
 int JOB_FAILURE ;
 int JOB_STATE_SCHEDULED ;
 int StartTransactionCommand () ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int mark_job_as_ended (TYPE_3__*,int ) ;
 int scheduled_bgw_job_transition_state_to (TYPE_3__*,int ) ;
 int ts_bgw_job_get_share_lock (int ,int ) ;

__attribute__((used)) static void
on_failure_to_start_job(ScheduledBgwJob *sjob)
{
 StartTransactionCommand();
 if (!ts_bgw_job_get_share_lock(sjob->job.fd.id, CurrentMemoryContext))
  elog(WARNING,
    "scheduler detected that job %d was deleted while failing to start",
    sjob->job.fd.id);
 else
  mark_job_as_ended(sjob, JOB_FAILURE);
 scheduled_bgw_job_transition_state_to(sjob, JOB_STATE_SCHEDULED);
 CommitTransactionCommand();
}
