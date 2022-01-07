
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct uart_softc {int * mev; TYPE_1__ tty; } ;


 int EVF_READ ;
 int assert (int ) ;
 int * mevent_add (int ,int ,int ,struct uart_softc*) ;
 int ttyopen (TYPE_1__*) ;
 int uart_drain ;

__attribute__((used)) static void
uart_opentty(struct uart_softc *sc)
{

 ttyopen(&sc->tty);
 sc->mev = mevent_add(sc->tty.fd, EVF_READ, uart_drain, sc);
 assert(sc->mev != ((void*)0));
}
