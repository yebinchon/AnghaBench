
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct uart_softc {void* dlh; void* dll; } ;


 int DEFAULT_BAUD ;
 int DEFAULT_RCLK ;
 int rxfifo_reset (struct uart_softc*,int) ;

__attribute__((used)) static void
uart_reset(struct uart_softc *sc)
{
 uint16_t divisor;

 divisor = DEFAULT_RCLK / DEFAULT_BAUD / 16;
 sc->dll = (uint8_t) divisor;
 sc->dlh = (uint8_t) (divisor >> 16);

 rxfifo_reset(sc, 1);
}
