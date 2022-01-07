
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {scalar_t__ vcpuid; int vm; } ;
typedef int cpuset_t ;


 int APIC_DELMODE_FIXED ;
 int APIC_DELMODE_LOWPRIO ;
 int CPU_ISSET (unsigned int,int *) ;
 int KASSERT (int,char*) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int vlapic_calcdest (int ,int *,int ,int,int,int) ;
 int vlapic_set_tmr (struct vlapic*,int,int) ;

void
vlapic_set_tmr_level(struct vlapic *vlapic, uint32_t dest, bool phys,
    int delmode, int vector)
{
 cpuset_t dmask;
 bool lowprio;

 KASSERT(vector >= 0 && vector <= 255, ("invalid vector %d", vector));




 if (delmode != APIC_DELMODE_FIXED && delmode != APIC_DELMODE_LOWPRIO) {
  VLAPIC_CTR1(vlapic, "Ignoring level trigger-mode for "
      "delivery-mode %d", delmode);
  return;
 }

 lowprio = (delmode == APIC_DELMODE_LOWPRIO);
 vlapic_calcdest(vlapic->vm, &dmask, dest, phys, lowprio, 0);

 if (!CPU_ISSET(((unsigned) vlapic->vcpuid), &dmask))
  return;

 VLAPIC_CTR1(vlapic, "vector %d set to level-triggered", vector);
 vlapic_set_tmr(vlapic, vector, 1);
}
