
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {int mutex; int reader_pid; } ;
typedef TYPE_1__ MessageQueue ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static pid_t
queue_get_reader(MessageQueue *queue)
{
 pid_t reader;
 volatile MessageQueue *vq = queue;

 SpinLockAcquire(&vq->mutex);
 reader = vq->reader_pid;
 SpinLockRelease(&vq->mutex);
 return reader;
}
