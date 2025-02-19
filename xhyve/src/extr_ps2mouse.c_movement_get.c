
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int num; int size; } ;
struct ps2mouse_softc {int status; scalar_t__ delta_x; scalar_t__ delta_y; TYPE_1__ fifo; } ;


 int PS2M_DATA_AONE ;
 int PS2M_DATA_LEFT_BUTTON ;
 int PS2M_DATA_MID_BUTTON ;
 int PS2M_DATA_RIGHT_BUTTON ;
 int PS2M_DATA_X_OFLOW ;
 int PS2M_DATA_X_SIGN ;
 int PS2M_DATA_Y_OFLOW ;
 int PS2M_DATA_Y_SIGN ;
 int fifo_put (struct ps2mouse_softc*,int) ;

__attribute__((used)) static void
movement_get(struct ps2mouse_softc *sc)
{
 uint8_t val0, val1, val2;

 val0 = PS2M_DATA_AONE;
 val0 |= sc->status & (PS2M_DATA_LEFT_BUTTON |
     PS2M_DATA_RIGHT_BUTTON | PS2M_DATA_MID_BUTTON);

 if (sc->delta_x >= 0) {
  if (sc->delta_x > 255) {
   val0 |= PS2M_DATA_X_OFLOW;
   val1 = 255;
  } else
   val1 = (uint8_t)sc->delta_x;
 } else {
  val0 |= PS2M_DATA_X_SIGN;
  if (sc->delta_x < -255) {
   val0 |= PS2M_DATA_X_OFLOW;
   val1 = 255;
  } else
   val1 = (uint8_t)sc->delta_x;
 }
 sc->delta_x = 0;

 if (sc->delta_y >= 0) {
  if (sc->delta_y > 255) {
   val0 |= PS2M_DATA_Y_OFLOW;
   val2 = 255;
  } else
   val2 = (uint8_t)sc->delta_y;
 } else {
  val0 |= PS2M_DATA_Y_SIGN;
  if (sc->delta_y < -255) {
   val0 |= PS2M_DATA_Y_OFLOW;
   val2 = 255;
  } else
   val2 = (uint8_t)sc->delta_y;
 }
 sc->delta_y = 0;

 if (sc->fifo.num < (sc->fifo.size - 3)) {
  fifo_put(sc, val0);
  fifo_put(sc, val1);
  fifo_put(sc, val2);
 }
}
