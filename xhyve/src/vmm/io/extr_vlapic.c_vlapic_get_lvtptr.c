
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int lvt_cmci; int lvt_timer; } ;
 int xhyve_abort (char*) ;

__attribute__((used)) static __inline uint32_t *
vlapic_get_lvtptr(struct vlapic *vlapic, uint32_t offset)
{
 struct LAPIC *lapic = vlapic->apic_page;
 int i;

 switch (offset) {
 case 134:
  return (&lapic->lvt_cmci);
 case 128:
 case 129:
 case 130:
 case 132:
 case 131:
 case 133:
  i = (offset - 128) >> 2;
  return ((&lapic->lvt_timer) + i);;
 default:
  xhyve_abort("vlapic_get_lvt: invalid LVT\n");
 }
}
