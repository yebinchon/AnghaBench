
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ num; } ;
struct ps2kbd_softc {int atkbdc_sc; int mtx; TYPE_1__ fifo; int enabled; } ;


 scalar_t__ PS2KBD_FIFOSZ ;
 int atkbdc_event (int ,int) ;
 int ps2kbd_keysym_queue (struct ps2kbd_softc*,int,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
ps2kbd_event(int down, uint32_t keysym, void *arg)
{
 struct ps2kbd_softc *sc = arg;
 int fifo_full;

 pthread_mutex_lock(&sc->mtx);
 if (!sc->enabled) {
  pthread_mutex_unlock(&sc->mtx);
  return;
 }
 fifo_full = sc->fifo.num == PS2KBD_FIFOSZ;
 ps2kbd_keysym_queue(sc, down, keysym);
 pthread_mutex_unlock(&sc->mtx);

 if (!fifo_full)
  atkbdc_event(sc->atkbdc_sc, 1);
}
