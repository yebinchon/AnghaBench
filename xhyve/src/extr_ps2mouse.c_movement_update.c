
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2mouse_softc {int cur_x; int cur_y; int delta_y; int delta_x; } ;



__attribute__((used)) static void
movement_update(struct ps2mouse_softc *sc, int x, int y)
{
 sc->delta_x += x - sc->cur_x;
 sc->delta_y += sc->cur_y - y;
 sc->cur_x = x;
 sc->cur_y = y;
}
