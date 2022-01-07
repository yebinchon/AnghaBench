
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cairo_t ;


 int cairo_set_source_rgba (int *,int,int,int,int) ;

void cairo_set_source_u32(cairo_t *cairo, uint32_t color) {
 cairo_set_source_rgba(cairo,
   (color >> (3*8) & 0xFF) / 255.0,
   (color >> (2*8) & 0xFF) / 255.0,
   (color >> (1*8) & 0xFF) / 255.0,
   (color >> (0*8) & 0xFF) / 255.0);
}
