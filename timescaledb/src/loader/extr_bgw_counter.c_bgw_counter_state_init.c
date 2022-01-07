
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ total_workers; int mutex; } ;
typedef int CounterState ;


 int AddinShmemInitLock ;
 int BGW_COUNTER_STATE_NAME ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemInitStruct (int ,int,int*) ;
 int SpinLockInit (int *) ;
 TYPE_1__* ct ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
bgw_counter_state_init()
{
 bool found;

 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);
 ct = ShmemInitStruct(BGW_COUNTER_STATE_NAME, sizeof(CounterState), &found);
 if (!found)
 {
  memset(ct, 0, sizeof(CounterState));
  SpinLockInit(&ct->mutex);
  ct->total_workers = 0;
 }
 LWLockRelease(AddinShmemInitLock);
}
