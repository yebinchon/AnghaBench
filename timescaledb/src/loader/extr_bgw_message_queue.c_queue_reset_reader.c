
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reader_pid; int mutex; } ;
typedef TYPE_1__ MessageQueue ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 scalar_t__ InvalidPid ;
 scalar_t__ MyProcPid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
queue_reset_reader(MessageQueue *queue)
{
 volatile MessageQueue *vq = queue;
 bool reset = 0;

 SpinLockAcquire(&vq->mutex);
 if (vq->reader_pid == MyProcPid)
 {
  reset = 1;
  vq->reader_pid = InvalidPid;
 }
 SpinLockRelease(&vq->mutex);

 if (!reset)
  ereport(ERROR,
    (ERRCODE_INTERNAL_ERROR,
     errmsg("multiple TimescaleDB background worker launchers have been started when "
      "only one is allowed"),
     errhint("This is a bug, please report it on our github page.")));
}
