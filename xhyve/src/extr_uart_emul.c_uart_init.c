
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uart_intr_func_t ;
struct uart_softc {int mtx; void* intr_deassert; void* intr_assert; void* arg; } ;


 struct uart_softc* calloc (int,int) ;
 int pthread_mutex_init (int *,int *) ;
 int uart_reset (struct uart_softc*) ;

struct uart_softc *
uart_init(uart_intr_func_t intr_assert, uart_intr_func_t intr_deassert,
    void *arg)
{
 struct uart_softc *sc;

 sc = calloc(1, sizeof(struct uart_softc));

 sc->arg = arg;
 sc->intr_assert = intr_assert;
 sc->intr_deassert = intr_deassert;

 pthread_mutex_init(&sc->mtx, ((void*)0));

 uart_reset(sc);

 return (sc);
}
