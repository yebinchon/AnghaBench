
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* set_intr_ready ) (struct vlapic*,int,int) ;} ;
struct vlapic {TYPE_1__ ops; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; int irr0; int tmr0; } ;


 int APIC_ESR_RECEIVE_ILLEGAL_VECTOR ;
 int APIC_SVR_ENABLE ;
 int KASSERT (int,char*) ;
 int VLAPIC_CTR1 (struct vlapic*,char*,int) ;
 int VLAPIC_CTR3 (struct vlapic*,char*,int,int,char*) ;
 int VLAPIC_CTR_IRR (struct vlapic*,char*) ;
 int atomic_set_int (int*,int) ;
 int stub1 (struct vlapic*,int,int) ;
 int vlapic_set_error (struct vlapic*,int ) ;

int
vlapic_set_intr_ready(struct vlapic *vlapic, int vector, bool level)
{
 struct LAPIC *lapic;
 uint32_t *irrptr, *tmrptr, mask;
 int idx;

 KASSERT(vector >= 0 && vector < 256, ("invalid vector %d", vector));

 lapic = vlapic->apic_page;
 if (!(lapic->svr & APIC_SVR_ENABLE)) {
  VLAPIC_CTR1(vlapic, "vlapic is software disabled, ignoring "
      "interrupt %d", vector);
  return (0);
 }

 if (vector < 16) {
  vlapic_set_error(vlapic, APIC_ESR_RECEIVE_ILLEGAL_VECTOR);
  VLAPIC_CTR1(vlapic, "vlapic ignoring interrupt to vector %d",
      vector);
  return (1);
 }

 if (vlapic->ops.set_intr_ready)
  return ((*vlapic->ops.set_intr_ready)(vlapic, vector, level));

 idx = (vector / 32) * 4;
 mask = 1 << (vector % 32);

 irrptr = &lapic->irr0;
 atomic_set_int(&irrptr[idx], mask);





 tmrptr = &lapic->tmr0;
 if ((tmrptr[idx] & mask) != (level ? mask : 0)) {
  VLAPIC_CTR3(vlapic, "vlapic TMR[%d] is 0x%08x but "
      "interrupt is %s-triggered", idx / 4, tmrptr[idx],
      level ? "level" : "edge");
 }

 VLAPIC_CTR_IRR(vlapic, "vlapic_set_intr_ready");
 return (1);
}
