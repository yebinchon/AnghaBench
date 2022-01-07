
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int callout; } ;


 int VHPET_NUM_TIMERS ;
 int callout_drain (int *) ;
 int free (struct vhpet*) ;

void
vhpet_cleanup(struct vhpet *vhpet)
{
 int i;

 for (i = 0; i < VHPET_NUM_TIMERS; i++)
  callout_drain(&vhpet->timer[i].callout);

 free(vhpet);
}
