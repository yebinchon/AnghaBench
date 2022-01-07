
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_3__ {int wlastupdate; int wlentime; int wtime; int wcnt; } ;
typedef TYPE_1__ kstat_io_t ;
typedef int hrtime_t ;


 int gethrtime () ;

void
kstat_waitq_enter(kstat_io_t *kiop)
{
 hrtime_t new, delta;
 ulong_t wcnt;

 new = gethrtime();
 delta = new - kiop->wlastupdate;
 kiop->wlastupdate = new;
 wcnt = kiop->wcnt++;
 if (wcnt != 0) {
  kiop->wlentime += delta * wcnt;
  kiop->wtime += delta;
 }
}
