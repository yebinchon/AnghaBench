
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;


 scalar_t__ BGWH_POSTMASTER_DIED ;
 scalar_t__ BGWH_STOPPED ;
 scalar_t__ GetBackgroundWorkerPid (int *,int *) ;
 int bgw_on_postmaster_death () ;

__attribute__((used)) static BgwHandleStatus
get_background_worker_pid(BackgroundWorkerHandle *handle, pid_t *pidp)
{
 BgwHandleStatus status;
 pid_t pid;

 if (handle == ((void*)0))
  status = BGWH_STOPPED;
 else
 {
  status = GetBackgroundWorkerPid(handle, &pid);
  if (pidp != ((void*)0))
   *pidp = pid;
 }

 if (status == BGWH_POSTMASTER_DIED)
  bgw_on_postmaster_death();
 return status;
}
