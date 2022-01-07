
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cairo_t ;
typedef int cairo_surface_t ;


 int CAIRO_FORMAT_ARGB32 ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_image_surface_create (int ,int,int) ;
 int cairo_image_surface_get_height (int *) ;
 int cairo_image_surface_get_width (int *) ;
 int cairo_paint (int *) ;
 int cairo_scale (int *,double,double) ;
 int cairo_set_source_surface (int *,int *,int ,int ) ;

cairo_surface_t *cairo_image_surface_scale(cairo_surface_t *image,
  int width, int height) {
 int image_width = cairo_image_surface_get_width(image);
 int image_height = cairo_image_surface_get_height(image);

 cairo_surface_t *new =
  cairo_image_surface_create(CAIRO_FORMAT_ARGB32, width, height);
 cairo_t *cairo = cairo_create(new);
 cairo_scale(cairo, (double)width / image_width,
   (double)height / image_height);
 cairo_set_source_surface(cairo, image, 0, 0);

 cairo_paint(cairo);
 cairo_destroy(cairo);
 return new;
}
