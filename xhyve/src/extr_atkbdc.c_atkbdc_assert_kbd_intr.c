
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_active; int irq; } ;
struct atkbdc_softc {int* ram; TYPE_1__ kbd; } ;


 int KBD_ENABLE_KBD_INT ;
 int xh_vm_isa_pulse_irq (int ,int ) ;

__attribute__((used)) static void
atkbdc_assert_kbd_intr(struct atkbdc_softc *sc)
{
 if ((sc->ram[0] & KBD_ENABLE_KBD_INT) != 0) {
  sc->kbd.irq_active = 1;
  xh_vm_isa_pulse_irq(sc->kbd.irq, sc->kbd.irq);
 }
}
