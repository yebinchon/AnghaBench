
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int lvt_error; int lvt_lint1; int lvt_lint0; int lvt_pcint; int lvt_thermal; int lvt_timer; int lvt_cmci; } ;


 int APIC_LVT_M ;
 int APIC_OFFSET_CMCI_LVT ;
 int APIC_OFFSET_ERROR_LVT ;
 int APIC_OFFSET_LINT0_LVT ;
 int APIC_OFFSET_LINT1_LVT ;
 int APIC_OFFSET_PERF_LVT ;
 int APIC_OFFSET_THERM_LVT ;
 int APIC_OFFSET_TIMER_LVT ;
 int vlapic_lvt_write_handler (struct vlapic*,int ) ;

__attribute__((used)) static void
vlapic_mask_lvts(struct vlapic *vlapic)
{
 struct LAPIC *lapic = vlapic->apic_page;

 lapic->lvt_cmci |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_CMCI_LVT);

 lapic->lvt_timer |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_TIMER_LVT);

 lapic->lvt_thermal |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_THERM_LVT);

 lapic->lvt_pcint |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_PERF_LVT);

 lapic->lvt_lint0 |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_LINT0_LVT);

 lapic->lvt_lint1 |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_LINT1_LVT);

 lapic->lvt_error |= APIC_LVT_M;
 vlapic_lvt_write_handler(vlapic, APIC_OFFSET_ERROR_LVT);
}
