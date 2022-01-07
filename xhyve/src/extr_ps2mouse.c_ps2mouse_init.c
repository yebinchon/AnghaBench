
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2mouse_softc {int mtx; struct atkbdc_softc* atkbdc_sc; } ;
struct atkbdc_softc {int dummy; } ;


 struct ps2mouse_softc* calloc (int,int) ;
 int console_ptr_register (int ,struct ps2mouse_softc*,int) ;
 int fifo_init (struct ps2mouse_softc*) ;
 int ps2mouse_event ;
 int ps2mouse_reset (struct ps2mouse_softc*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct ps2mouse_softc *
ps2mouse_init(struct atkbdc_softc *atkbdc_sc)
{
 struct ps2mouse_softc *sc;

 sc = calloc(1, sizeof (struct ps2mouse_softc));
 pthread_mutex_init(&sc->mtx, ((void*)0));
 fifo_init(sc);
 sc->atkbdc_sc = atkbdc_sc;

 pthread_mutex_lock(&sc->mtx);
 ps2mouse_reset(sc);
 pthread_mutex_unlock(&sc->mtx);

 console_ptr_register(ps2mouse_event, sc, 1);

 return (sc);
}
