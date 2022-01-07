
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_3__ {int rlastupdate; int rlentime; int rtime; int rcnt; } ;
typedef TYPE_1__ kstat_io_t ;
typedef int hrtime_t ;


 int ASSERT (int) ;
 int gethrtime () ;

void
kstat_runq_exit(kstat_io_t *kiop)
{
 hrtime_t new, delta;
 ulong_t rcnt;

 new = gethrtime();
 delta = new - kiop->rlastupdate;
 kiop->rlastupdate = new;
 rcnt = kiop->rcnt--;
 ASSERT((int)rcnt > 0);
 kiop->rlentime += delta * rcnt;
 kiop->rtime += delta;
}
