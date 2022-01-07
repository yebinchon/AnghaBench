
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_6__ {TYPE_2__ upper; TYPE_1__ lower; } ;
union e1000_tx_udesc {TYPE_3__ td; } ;
typedef int uint16_t ;
struct e82545_softc {union e1000_tx_udesc* esc_txdesc; } ;


 int E1000_TXD_CMD_RS ;
 int E1000_TXD_STAT_DD ;

__attribute__((used)) static void
e82545_transmit_done(struct e82545_softc *sc, uint16_t head, uint16_t tail,
    uint16_t dsize, int *tdwb)
{
 union e1000_tx_udesc *dsc;

 for ( ; head != tail; head = (head + 1) % dsize) {
  dsc = &sc->esc_txdesc[head];
  if (dsc->td.lower.data & E1000_TXD_CMD_RS) {
   dsc->td.upper.data |= E1000_TXD_STAT_DD;
   *tdwb = 1;
  }
 }
}
