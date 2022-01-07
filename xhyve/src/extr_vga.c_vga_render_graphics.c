
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct vga_softc {int gc_height; int gc_width; TYPE_1__* gc_image; } ;
struct TYPE_2__ {int * data; } ;


 int vga_get_pixel (struct vga_softc*,int,int) ;

__attribute__((used)) static void
vga_render_graphics(struct vga_softc *sc)
{
 uint16_t x, y;

 for (y = 0; y < sc->gc_height; y++) {
  for (x = 0; x < sc->gc_width; x++) {
   int offset;

   offset = y * sc->gc_width + x;
   sc->gc_image->data[offset] = vga_get_pixel(sc, x, y);
  }
 }
}
