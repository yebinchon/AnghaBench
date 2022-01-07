
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {int vm; TYPE_1__* timer; } ;
typedef scalar_t__ sbintime_t ;
struct TYPE_2__ {scalar_t__ callout_sbt; int callout; } ;


 int VM_CTR1 (int ,char*,int) ;
 int callout_stop (int *) ;
 int vhpet_timer_interrupt (struct vhpet*,int) ;

__attribute__((used)) static void
vhpet_stop_timer(struct vhpet *vhpet, int n, sbintime_t now)
{

 VM_CTR1(vhpet->vm, "hpet t%d stopped", n);
 callout_stop(&vhpet->timer[n].callout);
 if (vhpet->timer[n].callout_sbt < now) {
  VM_CTR1(vhpet->vm, "hpet t%d interrupt triggered after "
      "stopping timer", n);
  vhpet_timer_interrupt(vhpet, n);
 }
}
