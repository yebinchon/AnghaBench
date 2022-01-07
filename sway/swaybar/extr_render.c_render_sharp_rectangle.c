
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cairo_t ;


 int CAIRO_ANTIALIAS_NONE ;
 int cairo_fill (int *) ;
 int cairo_rectangle (int *,double,double,double,double) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_set_antialias (int *,int ) ;
 int cairo_set_source_u32 (int *,int ) ;

__attribute__((used)) static void render_sharp_rectangle(cairo_t *cairo, uint32_t color,
  double x, double y, double width, double height) {
 cairo_save(cairo);
 cairo_set_source_u32(cairo, color);
 cairo_set_antialias(cairo, CAIRO_ANTIALIAS_NONE);
 cairo_rectangle(cairo, x, y, width, height);
 cairo_fill(cairo);
 cairo_restore(cairo);
}
