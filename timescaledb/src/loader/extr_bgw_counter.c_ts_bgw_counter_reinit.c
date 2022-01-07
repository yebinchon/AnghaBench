
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; scalar_t__ total_workers; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* ct ;

extern void
ts_bgw_counter_reinit(void)
{

 SpinLockAcquire(&ct->mutex);
 ct->total_workers = 0;
 SpinLockRelease(&ct->mutex);
}
