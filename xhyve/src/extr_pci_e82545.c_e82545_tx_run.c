
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct e82545_softc {int esc_TDH; int esc_TDT; int esc_TDLEN; int esc_TDHr; int esc_mtx; scalar_t__ esc_tx_enabled; } ;


 int DPRINTF (char*,int,int,int) ;
 int E1000_ICR_TXDW ;
 int E1000_ICR_TXQE ;
 int e82545_icr_assert (struct e82545_softc*,int) ;
 int e82545_transmit (struct e82545_softc*,int,int,int,int*,int*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
e82545_tx_run(struct e82545_softc *sc)
{
 uint32_t cause;
 uint16_t head, rhead, tail, size;
 int lim, tdwb, sent;

 head = sc->esc_TDH;
 tail = sc->esc_TDT;
 size = (uint16_t)(sc->esc_TDLEN / 16);
 DPRINTF("tx_run: head %x, rhead %x, tail %x\r\n",
     sc->esc_TDH, sc->esc_TDHr, sc->esc_TDT);

 pthread_mutex_unlock(&sc->esc_mtx);
 rhead = head;
 tdwb = 0;
 for (lim = size / 4; sc->esc_tx_enabled && lim > 0; lim -= sent) {
  sent = e82545_transmit(sc, head, tail, size, &rhead, &tdwb);
  if (sent == 0)
   break;
  head = rhead;
 }
 pthread_mutex_lock(&sc->esc_mtx);

 sc->esc_TDH = head;
 sc->esc_TDHr = rhead;
 cause = 0;
 if (tdwb)
  cause |= E1000_ICR_TXDW;
 if (lim != size / 4 && sc->esc_TDH == sc->esc_TDT)
  cause |= E1000_ICR_TXQE;
 if (cause)
  e82545_icr_assert(sc, cause);

 DPRINTF("tx_run done: head %x, rhead %x, tail %x\r\n",
     sc->esc_TDH, sc->esc_TDHr, sc->esc_TDT);
}
