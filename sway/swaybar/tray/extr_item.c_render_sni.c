
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct swaybar_sni {int target_size; int min_size; int max_size; int watcher_id; scalar_t__ icon; } ;
struct swaybar_output {int height; int scale; int hotspots; TYPE_2__* bar; } ;
struct swaybar_hotspot {double x; int width; int height; int link; int data; int destroy; int callback; int y; } ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
typedef int cairo_operator_t ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int tray_padding; int icon_theme; } ;


 int CAIRO_FORMAT_ARGB32 ;
 int CAIRO_OPERATOR_CLEAR ;
 int CAIRO_OPERATOR_OVER ;
 int cairo_arc (int *,double,double,double,double,double) ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_fill (int *) ;
 int cairo_get_operator (int *) ;
 int * cairo_image_surface_create (int ,int,int) ;
 int cairo_image_surface_get_height (scalar_t__) ;
 int * cairo_image_surface_scale (scalar_t__,int,int) ;
 int cairo_rectangle (int *,double,int,int,int) ;
 int cairo_scale (int *,int,int) ;
 int cairo_set_line_width (int *,double) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_surface (int *,int *,double,int) ;
 int cairo_set_source_u32 (int *,int) ;
 int cairo_stroke (int *) ;
 int cairo_surface_destroy (int *) ;
 int cairo_translate (int *,int,int) ;
 struct swaybar_hotspot* calloc (int,int) ;
 int floor (int) ;
 int free ;
 int icon_hotspot_callback ;
 int reload_sni (struct swaybar_sni*,int ,int) ;
 scalar_t__ sni_ready (struct swaybar_sni*) ;
 int strdup (int ) ;
 int wl_list_insert (int *,int *) ;

uint32_t render_sni(cairo_t *cairo, struct swaybar_output *output, double *x,
  struct swaybar_sni *sni) {
 uint32_t height = output->height * output->scale;
 int padding = output->bar->config->tray_padding;
 int target_size = height - 2*padding;
 if (target_size != sni->target_size && sni_ready(sni)) {

  if (target_size < sni->min_size || target_size > sni->max_size) {
   reload_sni(sni, output->bar->config->icon_theme, target_size);
  }

  sni->target_size = target_size;
 }

 int icon_size;
 cairo_surface_t *icon;
 if (sni->icon) {
  int actual_size = cairo_image_surface_get_height(sni->icon);
  icon_size = actual_size < target_size ?
   actual_size*(target_size/actual_size) : target_size;
  icon = cairo_image_surface_scale(sni->icon, icon_size, icon_size);
 } else {
  icon_size = target_size*0.8;
  icon = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, icon_size, icon_size);
  cairo_t *cairo_icon = cairo_create(icon);
  cairo_set_source_u32(cairo_icon, 0xFF0000FF);
  cairo_translate(cairo_icon, icon_size/2, icon_size/2);
  cairo_scale(cairo_icon, icon_size/2, icon_size/2);
  cairo_arc(cairo_icon, 0, 0, 1, 0, 7);
  cairo_fill(cairo_icon);
  cairo_set_operator(cairo_icon, CAIRO_OPERATOR_CLEAR);
  cairo_arc(cairo_icon, 0.35, -0.3, 0.1, 0, 7);
  cairo_fill(cairo_icon);
  cairo_arc(cairo_icon, -0.35, -0.3, 0.1, 0, 7);
  cairo_fill(cairo_icon);
  cairo_arc(cairo_icon, 0, 0.75, 0.5, 3.71238898038469, 5.71238898038469);
  cairo_set_line_width(cairo_icon, 0.1);
  cairo_stroke(cairo_icon);
  cairo_destroy(cairo_icon);
 }

 int padded_size = icon_size + 2*padding;
 *x -= padded_size;
 int y = floor((height - padded_size) / 2.0);

 cairo_operator_t op = cairo_get_operator(cairo);
 cairo_set_operator(cairo, CAIRO_OPERATOR_OVER);
 cairo_set_source_surface(cairo, icon, *x + padding, y + padding);
 cairo_rectangle(cairo, *x, y, padded_size, padded_size);
 cairo_fill(cairo);
 cairo_set_operator(cairo, op);

 cairo_surface_destroy(icon);

 struct swaybar_hotspot *hotspot = calloc(1, sizeof(struct swaybar_hotspot));
 hotspot->x = *x;
 hotspot->y = 0;
 hotspot->width = height;
 hotspot->height = height;
 hotspot->callback = icon_hotspot_callback;
 hotspot->destroy = free;
 hotspot->data = strdup(sni->watcher_id);
 wl_list_insert(&output->hotspots, &hotspot->link);

 return output->height;
}
