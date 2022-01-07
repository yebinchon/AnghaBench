
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2mouse_softc {scalar_t__ delta_y; scalar_t__ delta_x; } ;



__attribute__((used)) static void
movement_reset(struct ps2mouse_softc *sc)
{
 sc->delta_x = 0;
 sc->delta_y = 0;
}
