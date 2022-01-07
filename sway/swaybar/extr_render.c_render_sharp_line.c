
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cairo_t ;


 int CAIRO_ANTIALIAS_NONE ;
 int cairo_line_to (int *,double,double) ;
 int cairo_move_to (int *,double,double) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_set_antialias (int *,int ) ;
 int cairo_set_line_width (int *,double) ;
 int cairo_set_source_u32 (int *,int ) ;
 int cairo_stroke (int *) ;
 int render_sharp_rectangle (int *,int ,double,double,double,double) ;

__attribute__((used)) static void render_sharp_line(cairo_t *cairo, uint32_t color,
  double x, double y, double width, double height) {
 if (width > 1 && height > 1) {
  render_sharp_rectangle(cairo, color, x, y, width, height);
 } else {
  cairo_save(cairo);
  cairo_set_source_u32(cairo, color);
  cairo_set_antialias(cairo, CAIRO_ANTIALIAS_NONE);
  if (width == 1) {
   x += 0.5;
   height += y;
   width = x;
  }
  if (height == 1) {
   y += 0.5;
   width += x;
   height = y;
  }
  cairo_move_to(cairo, x, y);
  cairo_set_line_width(cairo, 1.0);
  cairo_line_to(cairo, width, height);
  cairo_stroke(cairo);
  cairo_restore(cairo);
 }
}
