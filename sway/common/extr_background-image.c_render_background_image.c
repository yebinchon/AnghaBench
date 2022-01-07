
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum background_mode { ____Placeholder_background_mode } background_mode ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
typedef int cairo_pattern_t ;
 int CAIRO_EXTEND_REPEAT ;
 int assert (int ) ;
 double cairo_image_surface_get_height (int *) ;
 double cairo_image_surface_get_width (int *) ;
 int cairo_paint (int *) ;
 int * cairo_pattern_create_for_surface (int *) ;
 int cairo_pattern_set_extend (int *,int ) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_scale (int *,double,double) ;
 int cairo_set_source (int *,int *) ;
 int cairo_set_source_surface (int *,int *,double,double) ;

void render_background_image(cairo_t *cairo, cairo_surface_t *image,
  enum background_mode mode, int buffer_width, int buffer_height) {
 double width = cairo_image_surface_get_width(image);
 double height = cairo_image_surface_get_height(image);

 cairo_save(cairo);
 switch (mode) {
 case 129:
  cairo_scale(cairo,
    (double)buffer_width / width,
    (double)buffer_height / height);
  cairo_set_source_surface(cairo, image, 0, 0);
  break;
 case 133: {
  double window_ratio = (double)buffer_width / buffer_height;
  double bg_ratio = width / height;

  if (window_ratio > bg_ratio) {
   double scale = (double)buffer_width / width;
   cairo_scale(cairo, scale, scale);
   cairo_set_source_surface(cairo, image,
     0, (double)buffer_height / 2 / scale - height / 2);
  } else {
   double scale = (double)buffer_height / height;
   cairo_scale(cairo, scale, scale);
   cairo_set_source_surface(cairo, image,
     (double)buffer_width / 2 / scale - width / 2, 0);
  }
  break;
 }
 case 132: {
  double window_ratio = (double)buffer_width / buffer_height;
  double bg_ratio = width / height;

  if (window_ratio > bg_ratio) {
   double scale = (double)buffer_height / height;
   cairo_scale(cairo, scale, scale);
   cairo_set_source_surface(cairo, image,
     (double)buffer_width / 2 / scale - width / 2, 0);
  } else {
   double scale = (double)buffer_width / width;
   cairo_scale(cairo, scale, scale);
   cairo_set_source_surface(cairo, image,
     0, (double)buffer_height / 2 / scale - height / 2);
  }
  break;
 }
 case 134:
  cairo_set_source_surface(cairo, image,
    (double)buffer_width / 2 - width / 2,
    (double)buffer_height / 2 - height / 2);
  break;
 case 128: {
  cairo_pattern_t *pattern = cairo_pattern_create_for_surface(image);
  cairo_pattern_set_extend(pattern, CAIRO_EXTEND_REPEAT);
  cairo_set_source(cairo, pattern);
  break;
 }
 case 130:
 case 131:
  assert(0);
  break;
 }
 cairo_paint(cairo);
 cairo_restore(cairo);
}
