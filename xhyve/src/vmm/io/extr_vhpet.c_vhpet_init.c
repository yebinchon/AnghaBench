
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vm {int dummy; } ;
struct vhpet_callout_arg {int timer_num; struct vhpet* vhpet; } ;
struct vhpet {TYPE_1__* timer; int freq_sbt; int mtx; struct vm* vm; } ;
struct bintime {int dummy; } ;
struct TYPE_2__ {int cap_config; int compval; struct vhpet_callout_arg arg; int callout; } ;


 int FREQ2BT (int ,struct bintime*) ;
 int HPET_FREQ ;
 int HPET_TCAP_FSB_INT_DEL ;
 int HPET_TCAP_PER_INT ;
 int VHPET_NUM_TIMERS ;
 int assert (struct vhpet*) ;
 int bttosbt (struct bintime) ;
 int bzero (struct vhpet*,int) ;
 int callout_init (int *,int) ;
 struct vhpet* malloc (int) ;
 int pthread_mutex_init (int *,int *) ;
 int vioapic_pincount (struct vm*) ;

struct vhpet *
vhpet_init(struct vm *vm)
{
 int i, pincount;
 struct vhpet *vhpet;
 uint64_t allowed_irqs;
 struct vhpet_callout_arg *arg;
 struct bintime bt;

 vhpet = malloc(sizeof(struct vhpet));
 assert(vhpet);
 bzero(vhpet, sizeof(struct vhpet));
 vhpet->vm = vm;

 pthread_mutex_init(&vhpet->mtx, ((void*)0));

 FREQ2BT(HPET_FREQ, &bt);
 vhpet->freq_sbt = bttosbt(bt);

 pincount = vioapic_pincount(vm);
 if (pincount >= 24)
  allowed_irqs = 0x00f00000;
 else
  allowed_irqs = 0;




 for (i = 0; i < VHPET_NUM_TIMERS; i++) {
  vhpet->timer[i].cap_config = allowed_irqs << 32;
  vhpet->timer[i].cap_config |= HPET_TCAP_PER_INT;
  vhpet->timer[i].cap_config |= HPET_TCAP_FSB_INT_DEL;

  vhpet->timer[i].compval = 0xffffffff;
  callout_init(&vhpet->timer[i].callout, 1);

  arg = &vhpet->timer[i].arg;
  arg->vhpet = vhpet;
  arg->timer_num = i;
 }

 return (vhpet);
}
