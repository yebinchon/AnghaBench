
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cairo_surface_t ;
struct TYPE_3__ {int message; } ;
typedef int GdkPixbuf ;
typedef TYPE_1__ GError ;


 scalar_t__ CAIRO_STATUS_SUCCESS ;
 int SWAY_ERROR ;
 int * cairo_image_surface_create_from_png (char const*) ;
 int cairo_status_to_string (scalar_t__) ;
 scalar_t__ cairo_surface_status (int *) ;
 int g_object_unref (int *) ;
 int * gdk_cairo_image_surface_create_from_pixbuf (int *) ;
 int * gdk_pixbuf_new_from_file (char const*,TYPE_1__**) ;
 int sway_log (int ,char*,...) ;

cairo_surface_t *load_background_image(const char *path) {
 cairo_surface_t *image;
 image = cairo_image_surface_create_from_png(path);

 if (!image) {
  sway_log(SWAY_ERROR, "Failed to read background image.");
  return ((void*)0);
 }
 if (cairo_surface_status(image) != CAIRO_STATUS_SUCCESS) {
  sway_log(SWAY_ERROR, "Failed to read background image: %s."

    "\nSway was compiled without gdk_pixbuf support, so only"
    "\nPNG images can be loaded. This is the likely cause."

    , cairo_status_to_string(cairo_surface_status(image)));
  return ((void*)0);
 }
 return image;
}
