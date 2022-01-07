
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int * lock; int mutex; int reader_pid; } ;
typedef int MessageQueue ;


 int AddinShmemInitLock ;
 int BGW_MQ_NAME ;
 int BGW_MQ_TRANCHE_NAME ;
 TYPE_4__* GetNamedLWLockTranche (int ) ;
 int InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemInitStruct (int ,int,int*) ;
 int SpinLockInit (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* mq ;

__attribute__((used)) static void
queue_init()
{
 bool found;

 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);
 mq = ShmemInitStruct(BGW_MQ_NAME, sizeof(MessageQueue), &found);
 if (!found)
 {
  memset(mq, 0, sizeof(MessageQueue));
  mq->reader_pid = InvalidPid;
  SpinLockInit(&mq->mutex);
  mq->lock = &(GetNamedLWLockTranche(BGW_MQ_TRANCHE_NAME))->lock;
 }
 LWLockRelease(AddinShmemInitLock);
}
