
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc_uart_softc {scalar_t__ irq; } ;


 int assert (int) ;
 int xh_vm_isa_pulse_irq (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
lpc_uart_intr_assert(void *arg)
{
 struct lpc_uart_softc *sc = arg;

 assert(sc->irq >= 0);

 xh_vm_isa_pulse_irq(sc->irq, sc->irq);
}
