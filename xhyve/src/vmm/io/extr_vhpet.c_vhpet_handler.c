
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vhpet_callout_arg {int timer_num; struct vhpet* vhpet; } ;
struct vhpet {int vm; TYPE_1__* timer; } ;
struct callout {int dummy; } ;
typedef int sbintime_t ;
struct TYPE_2__ {struct callout callout; } ;


 int VHPET_LOCK (struct vhpet*) ;
 int VHPET_UNLOCK (struct vhpet*) ;
 int VM_CTR1 (int ,char*,int) ;
 int callout_active (struct callout*) ;
 int callout_deactivate (struct callout*) ;
 scalar_t__ callout_pending (struct callout*) ;
 int vhpet_counter (struct vhpet*,int *) ;
 int vhpet_counter_enabled (struct vhpet*) ;
 int vhpet_start_timer (struct vhpet*,int,int ,int ) ;
 int vhpet_timer_interrupt (struct vhpet*,int) ;
 int xhyve_abort (char*,void*) ;

__attribute__((used)) static void
vhpet_handler(void *a)
{
 int n;
 uint32_t counter;
 sbintime_t now;
 struct vhpet *vhpet;
 struct callout *callout;
 struct vhpet_callout_arg *arg;

 arg = a;
 vhpet = arg->vhpet;
 n = arg->timer_num;
 callout = &vhpet->timer[n].callout;

 VM_CTR1(vhpet->vm, "hpet t%d fired", n);

 VHPET_LOCK(vhpet);

 if (callout_pending(callout))
  goto done;

 if (!callout_active(callout))
  goto done;

 callout_deactivate(callout);

 if (!vhpet_counter_enabled(vhpet))
  xhyve_abort("vhpet(%p) callout with counter disabled\n", (void*)vhpet);

 counter = vhpet_counter(vhpet, &now);
 vhpet_start_timer(vhpet, n, counter, now);
 vhpet_timer_interrupt(vhpet, n);
done:
 VHPET_UNLOCK(vhpet);
 return;
}
