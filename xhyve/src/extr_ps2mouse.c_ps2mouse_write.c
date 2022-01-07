
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ps2mouse_softc {int curcmd; int sampling_rate; int resolution; int status; int mtx; } ;


 int PS2MC_ACK ;
 int PS2MC_BAT_SUCCESS ;
 int PS2MOUSE_DEV_ID ;
 int PS2M_STS_ENABLE_DEV ;
 int PS2M_STS_REMOTE_MODE ;
 int fifo_put (struct ps2mouse_softc*,int) ;
 int fifo_reset (struct ps2mouse_softc*) ;
 int fprintf (int ,char*,int) ;
 int movement_get (struct ps2mouse_softc*) ;
 int ps2mouse_reset (struct ps2mouse_softc*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;

void
ps2mouse_write(struct ps2mouse_softc *sc, uint8_t val, int insert)
{
 pthread_mutex_lock(&sc->mtx);
 fifo_reset(sc);
 if (sc->curcmd) {
  switch (sc->curcmd) {
  case 131:
   sc->sampling_rate = val;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 132:
   sc->resolution = val;
   fifo_put(sc, PS2MC_ACK);
   break;
  default:
   fprintf(stderr, "Unhandled ps2 mouse current "
       "command byte 0x%02x\n", val);
   break;
  }
  sc->curcmd = 0;

 } else if (insert) {
  fifo_put(sc, val);
 } else {
  switch (val) {
  case 0x00:
   fifo_put(sc, PS2MC_ACK);
   break;
  case 138:
   ps2mouse_reset(sc);
   fifo_put(sc, PS2MC_ACK);
   fifo_put(sc, PS2MC_BAT_SUCCESS);
   fifo_put(sc, PS2MOUSE_DEV_ID);
   break;
  case 134:
   ps2mouse_reset(sc);
   fifo_put(sc, PS2MC_ACK);
   break;
  case 140:
   fifo_reset(sc);
   sc->status &= ~PS2M_STS_ENABLE_DEV;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 139:
   fifo_reset(sc);
   sc->status |= PS2M_STS_ENABLE_DEV;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 131:
   sc->curcmd = val;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 136:
   fifo_put(sc, PS2MC_ACK);
   fifo_put(sc, PS2MOUSE_DEV_ID);
   break;
  case 133:
   sc->status |= PS2M_STS_REMOTE_MODE;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 137:
   fifo_put(sc, PS2MC_ACK);
   movement_get(sc);
   break;
  case 128:
   sc->status &= ~PS2M_STS_REMOTE_MODE;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 135:
   fifo_put(sc, PS2MC_ACK);
   fifo_put(sc, sc->status);
   fifo_put(sc, sc->resolution);
   fifo_put(sc, sc->sampling_rate);
   break;
  case 132:
   sc->curcmd = val;
   fifo_put(sc, PS2MC_ACK);
   break;
  case 130:
  case 129:
   fifo_put(sc, PS2MC_ACK);
   break;
  default:
   fifo_put(sc, PS2MC_ACK);
   fprintf(stderr, "Unhandled ps2 mouse command "
       "0x%02x\n", val);
   break;
  }
 }
 pthread_mutex_unlock(&sc->mtx);
}
