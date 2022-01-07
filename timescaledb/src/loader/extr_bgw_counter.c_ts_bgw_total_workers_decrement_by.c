
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_workers; int mutex; } ;


 int FATAL ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* ct ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

extern void
ts_bgw_total_workers_decrement_by(int decrement_by)
{




 SpinLockAcquire(&ct->mutex);
 if (ct->total_workers - decrement_by >= 1)
 {
  ct->total_workers -= decrement_by;
  SpinLockRelease(&ct->mutex);
 }
 else
 {
  SpinLockRelease(&ct->mutex);
  ereport(FATAL,
    (errmsg("TimescaleDB background worker cannot decrement workers below 1"),
     errhint("The background worker scheduler is in an invalid state and may not be "
       "keeping track of workers allocated to TimescaleDB properly, please "
       "submit a bug report.")));
 }
}
