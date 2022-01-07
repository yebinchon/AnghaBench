
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int * lvt_last; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; } ;


 int APIC_LVTT_TM ;
 int APIC_LVT_DM ;
 int APIC_LVT_DS ;
 int APIC_LVT_IIPP ;
 int APIC_LVT_M ;
 int APIC_LVT_RIRR ;
 int APIC_LVT_TM ;
 int APIC_LVT_VECTOR ;




 int APIC_SVR_ENABLE ;
 int atomic_store_rel_32 (int *,int) ;
 int lvt_off_to_idx (int) ;
 int* vlapic_get_lvtptr (struct vlapic*,int) ;

void
vlapic_lvt_write_handler(struct vlapic *vlapic, uint32_t offset)
{
 uint32_t *lvtptr, mask, val;
 struct LAPIC *lapic;
 int idx;

 lapic = vlapic->apic_page;
 lvtptr = vlapic_get_lvtptr(vlapic, offset);
 val = *lvtptr;
 idx = lvt_off_to_idx(offset);

 if (!(lapic->svr & APIC_SVR_ENABLE))
  val |= APIC_LVT_M;
 mask = APIC_LVT_M | APIC_LVT_DS | APIC_LVT_VECTOR;
 switch (offset) {
 case 128:
  mask |= APIC_LVTT_TM;
  break;
 case 131:
  break;
 case 130:
 case 129:
  mask |= APIC_LVT_TM | APIC_LVT_RIRR | APIC_LVT_IIPP;

 default:
  mask |= APIC_LVT_DM;
  break;
 }
 val &= mask;
 *lvtptr = val;
 atomic_store_rel_32(&vlapic->lvt_last[idx], val);
}
