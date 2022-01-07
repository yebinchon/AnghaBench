
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpic {int vm; struct atpic* atpic; } ;
struct atpic {int intr_raised; int service; int request; int mask; } ;


 int APIC_LVT_LINT0 ;
 int VATPIC_CTR3 (struct vatpic*,char*,int ,int ,int ) ;
 int VATPIC_CTR4 (struct vatpic*,char*,int,int ,int ,int ) ;
 int lapic_set_local_intr (int ,int,int ) ;
 int vatpic_get_highest_irrpin (struct atpic*) ;
 int vatpic_set_pinstate (struct vatpic*,int,int) ;
 int vioapic_pulse_irq (int ,int ) ;

__attribute__((used)) static void
vatpic_notify_intr(struct vatpic *vatpic)
{
 struct atpic *atpic;
 int pin;




 atpic = &vatpic->atpic[1];
 if (!atpic->intr_raised &&
     (pin = vatpic_get_highest_irrpin(atpic)) != -1) {
  VATPIC_CTR4(vatpic, "atpic slave notify pin = %d "
      "(imr 0x%x irr 0x%x isr 0x%x)", pin,
      atpic->mask, atpic->request, atpic->service);




  atpic->intr_raised = 1;
  vatpic_set_pinstate(vatpic, 2, 1);
  vatpic_set_pinstate(vatpic, 2, 0);
 } else {
  VATPIC_CTR3(vatpic, "atpic slave no eligible interrupts "
      "(imr 0x%x irr 0x%x isr 0x%x)",
      atpic->mask, atpic->request, atpic->service);
 }




 atpic = &vatpic->atpic[0];
 if (!atpic->intr_raised &&
     (pin = vatpic_get_highest_irrpin(atpic)) != -1) {
  VATPIC_CTR4(vatpic, "atpic master notify pin = %d "
      "(imr 0x%x irr 0x%x isr 0x%x)", pin,
      atpic->mask, atpic->request, atpic->service);
  atpic->intr_raised = 1;
  lapic_set_local_intr(vatpic->vm, -1, APIC_LVT_LINT0);
  vioapic_pulse_irq(vatpic->vm, 0);
 } else {
  VATPIC_CTR3(vatpic, "atpic master no eligible interrupts "
      "(imr 0x%x irr 0x%x isr 0x%x)",
      atpic->mask, atpic->request, atpic->service);
 }
}
