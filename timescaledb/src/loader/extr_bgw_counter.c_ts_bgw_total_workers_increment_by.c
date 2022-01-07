
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_workers; int mutex; } ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* ct ;
 int ts_guc_max_background_workers ;

extern bool
ts_bgw_total_workers_increment_by(int increment_by)
{
 bool incremented = 0;
 int max_workers = ts_guc_max_background_workers;

 SpinLockAcquire(&ct->mutex);
 if (ct->total_workers + increment_by <= max_workers)
 {
  ct->total_workers += increment_by;
  incremented = 1;
 }
 SpinLockRelease(&ct->mutex);
 return incremented;
}
