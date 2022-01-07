
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ps2kbd_softc {int mtx; } ;


 int fifo_get (struct ps2kbd_softc*,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
ps2kbd_read(struct ps2kbd_softc *sc, uint8_t *val)
{
 int retval;

 pthread_mutex_lock(&sc->mtx);
 retval = fifo_get(sc, val);
 pthread_mutex_unlock(&sc->mtx);

 return (retval);
}
