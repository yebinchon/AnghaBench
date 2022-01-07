
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int may_need_mark_end; int * handle; } ;
typedef TYPE_1__ ScheduledBgwJob ;


 int TerminateBackgroundWorker (int *) ;
 int WaitForBackgroundWorkerShutdown (int *) ;
 int worker_state_cleanup (TYPE_1__*) ;

__attribute__((used)) static void
terminate_and_cleanup_job(ScheduledBgwJob *sjob)
{
 if (sjob->handle != ((void*)0))
 {
  TerminateBackgroundWorker(sjob->handle);
  WaitForBackgroundWorkerShutdown(sjob->handle);
 }
 sjob->may_need_mark_end = 0;
 worker_state_cleanup(sjob);
}
