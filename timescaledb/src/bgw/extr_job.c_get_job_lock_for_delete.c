
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int backendId; } ;
typedef TYPE_1__ VirtualTransactionId ;
struct TYPE_7__ {int pid; scalar_t__ isBackgroundWorker; } ;
typedef TYPE_2__ PGPROC ;
typedef int LOCKTAG ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 TYPE_2__* BackendIdGetProc (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 TYPE_1__* GetLockConflicts (int *,int ) ;
 int Int32GetDatum (int ) ;
 int NOTICE ;
 scalar_t__ VirtualTransactionIdIsValid (TYPE_1__) ;
 int elog (int ,char*,int ,int ) ;
 int lock_job (int ,int ,int,int *,int) ;
 int pg_cancel_backend ;

__attribute__((used)) static void
get_job_lock_for_delete(int32 job_id)
{
 LOCKTAG tag;
 bool got_lock;



 got_lock = lock_job(job_id,
      AccessExclusiveLock,
                         0,
      &tag,
                  0);
 if (!got_lock)
 {


  VirtualTransactionId *vxid = GetLockConflicts(&tag, AccessExclusiveLock);
  PGPROC *proc;

  if (VirtualTransactionIdIsValid(*vxid))
  {
   proc = BackendIdGetProc(vxid->backendId);
   if (proc != ((void*)0) && proc->isBackgroundWorker)
   {
    elog(NOTICE,
      "cancelling the background worker for job %d (pid %d)",
      job_id,
      proc->pid);
    DirectFunctionCall1(pg_cancel_backend, Int32GetDatum(proc->pid));
   }
  }


  got_lock = lock_job(job_id,
       AccessExclusiveLock,
                          0,
       &tag,
                   1);
 }
 Assert(got_lock);
}
