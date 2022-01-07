
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhpet {int isr; int vm; } ;


 int KASSERT (int,char*) ;
 int vhpet_timer_ioapic_pin (struct vhpet*,int) ;
 int vioapic_deassert_irq (int ,int) ;

__attribute__((used)) static void
vhpet_timer_clear_isr(struct vhpet *vhpet, int n)
{
 int pin;

 if (vhpet->isr & (1 << n)) {
  pin = vhpet_timer_ioapic_pin(vhpet, n);
  KASSERT(pin != 0, ("vhpet timer %d irq incorrectly routed", n));
  vioapic_deassert_irq(vhpet->vm, pin);
  vhpet->isr &= ~(1 << n);
 }
}
