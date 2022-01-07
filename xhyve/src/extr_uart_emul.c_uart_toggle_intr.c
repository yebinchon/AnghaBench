
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uart_softc {int arg; int (* intr_assert ) (int ) ;int (* intr_deassert ) (int ) ;} ;


 scalar_t__ IIR_NOPEND ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 scalar_t__ uart_intr_reason (struct uart_softc*) ;

__attribute__((used)) static void
uart_toggle_intr(struct uart_softc *sc)
{
 uint8_t intr_reason;

 intr_reason = (uint8_t) uart_intr_reason(sc);

 if (intr_reason == IIR_NOPEND)
  (*sc->intr_deassert)(sc->arg);
 else
  (*sc->intr_assert)(sc->arg);
}
