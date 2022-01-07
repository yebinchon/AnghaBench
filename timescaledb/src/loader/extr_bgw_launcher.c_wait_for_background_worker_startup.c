
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;


 int Assert (int) ;
 scalar_t__ BGWH_POSTMASTER_DIED ;
 scalar_t__ BGWH_STARTED ;
 scalar_t__ BGWH_STOPPED ;
 scalar_t__ WaitForBackgroundWorkerStartup (int *,int *) ;
 int bgw_on_postmaster_death () ;

__attribute__((used)) static void
wait_for_background_worker_startup(BackgroundWorkerHandle *handle, pid_t *pidp)
{
 BgwHandleStatus status;

 if (handle == ((void*)0))
  status = BGWH_STOPPED;
 else
  status = WaitForBackgroundWorkerStartup(handle, pidp);
 if (status == BGWH_POSTMASTER_DIED)
  bgw_on_postmaster_death();

 Assert(status == BGWH_STOPPED || status == BGWH_STARTED);
 return;
}
