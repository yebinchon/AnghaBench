
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* register_background_worker_callback_type ) (int *) ;
typedef int pid_t ;
struct TYPE_4__ {scalar_t__ state; int * handle; } ;
typedef TYPE_1__ ScheduledBgwJob ;
typedef int BgwHandleStatus ;


 int Assert (int ) ;




 int CommitTransactionCommand () ;
 int ERROR ;
 scalar_t__ JOB_STATE_SCHEDULED ;
 scalar_t__ JOB_STATE_STARTED ;
 int StartTransactionCommand () ;
 int WaitForBackgroundWorkerStartup (int *,int *) ;
 int bgw_scheduler_on_postmaster_death () ;
 int elog (int ,char*,int) ;
 int scheduled_bgw_job_transition_state_to (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
scheduled_ts_bgw_job_start(ScheduledBgwJob *sjob,
         register_background_worker_callback_type bgw_register)
{
 pid_t pid;
 BgwHandleStatus status;

 scheduled_bgw_job_transition_state_to(sjob, JOB_STATE_STARTED);

 if (sjob->state != JOB_STATE_STARTED)
  return;

 Assert(sjob->handle != ((void*)0));
 if (bgw_register != ((void*)0))
  bgw_register(sjob->handle);

 status = WaitForBackgroundWorkerStartup(sjob->handle, &pid);
 switch (status)
 {
  case 130:
   bgw_scheduler_on_postmaster_death();
   break;
  case 129:

   break;
  case 128:
   StartTransactionCommand();
   scheduled_bgw_job_transition_state_to(sjob, JOB_STATE_SCHEDULED);
   CommitTransactionCommand();
   break;
  case 131:

   elog(ERROR, "unexpected bgworker state %d", status);
   break;
 }
}
