
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_workers; int mutex; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* ct ;

extern int
ts_bgw_total_workers_get()
{
 int nworkers;

 SpinLockAcquire(&ct->mutex);
 nworkers = ct->total_workers;
 SpinLockRelease(&ct->mutex);
 return nworkers;
}
