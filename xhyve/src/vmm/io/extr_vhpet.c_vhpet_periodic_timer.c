
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhpet {TYPE_1__* timer; } ;
struct TYPE_2__ {int cap_config; } ;


 int HPET_TCNF_TYPE ;

__attribute__((used)) static __inline bool
vhpet_periodic_timer(struct vhpet *vhpet, int n)
{

 return ((vhpet->timer[n].cap_config & HPET_TCNF_TYPE) != 0);
}
