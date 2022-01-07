
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vhpet {int freq_sbt; TYPE_1__* timer; } ;
typedef int sbintime_t ;
struct TYPE_2__ {scalar_t__ comprate; int compval; int callout_sbt; int arg; int callout; } ;


 int C_ABSOLUTE ;
 int callout_reset_sbt (int *,int,int ,int ,int *,int ) ;
 int vhpet_adjust_compval (struct vhpet*,int,int) ;
 int vhpet_handler ;

__attribute__((used)) static void
vhpet_start_timer(struct vhpet *vhpet, int n, uint32_t counter, sbintime_t now)
{
 sbintime_t delta;

 if (vhpet->timer[n].comprate != 0)
  vhpet_adjust_compval(vhpet, n, counter);
 else {






 }

 delta = (vhpet->timer[n].compval - counter) * vhpet->freq_sbt;
 vhpet->timer[n].callout_sbt = now + delta;
 callout_reset_sbt(&vhpet->timer[n].callout, vhpet->timer[n].callout_sbt,
     0, vhpet_handler, &vhpet->timer[n].arg, C_ABSOLUTE);
}
