
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2mouse_softc {int resolution; int sampling_rate; scalar_t__ delta_y; scalar_t__ delta_x; scalar_t__ cur_y; scalar_t__ cur_x; int status; } ;


 int PS2M_STS_ENABLE_DEV ;
 int fifo_reset (struct ps2mouse_softc*) ;
 int movement_reset (struct ps2mouse_softc*) ;

__attribute__((used)) static void
ps2mouse_reset(struct ps2mouse_softc *sc)
{
 fifo_reset(sc);
 movement_reset(sc);
 sc->status = PS2M_STS_ENABLE_DEV;
 sc->resolution = 4;
 sc->sampling_rate = 100;

 sc->cur_x = 0;
 sc->cur_y = 0;
 sc->delta_x = 0;
 sc->delta_y = 0;
}
