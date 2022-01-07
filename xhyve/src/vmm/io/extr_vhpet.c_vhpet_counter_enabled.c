
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhpet {int config; } ;


 int HPET_CNF_ENABLE ;

__attribute__((used)) static __inline bool
vhpet_counter_enabled(struct vhpet *vhpet)
{

 return ((vhpet->config & HPET_CNF_ENABLE) ? 1 : 0);
}
