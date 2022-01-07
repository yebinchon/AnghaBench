
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ reader_pid; int mutex; } ;
typedef TYPE_1__ MessageQueue ;


 int ERROR ;
 scalar_t__ InvalidPid ;
 scalar_t__ MyProcPid ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int ereport (int ,int ) ;
 int errhint (char*,scalar_t__) ;
 int errmsg (char*) ;

__attribute__((used)) static void
queue_set_reader(MessageQueue *queue)
{
 volatile MessageQueue *vq = queue;
 pid_t reader_pid;

 SpinLockAcquire(&vq->mutex);
 if (vq->reader_pid == InvalidPid)
 {
  vq->reader_pid = MyProcPid;
 }
 reader_pid = vq->reader_pid;
 SpinLockRelease(&vq->mutex);
 if (reader_pid != MyProcPid)
  ereport(ERROR,
    (errmsg("only one reader allowed for TimescaleDB background worker message queue"),
     errhint("Current process is %d", reader_pid)));
}
