
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_texture {int dummy; } ;
struct wlr_renderer {int dummy; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
struct sway_container {double title_height; int formatted_title; } ;
struct border_colors {int * text; int * background; } ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
typedef int cairo_font_options_t ;
struct TYPE_4__ {int pango_markup; int font; } ;
struct TYPE_3__ {double scale; int backend; int subpixel; } ;
typedef int PangoContext ;


 int CAIRO_ANTIALIAS_BEST ;
 int CAIRO_ANTIALIAS_SUBPIXEL ;
 int CAIRO_FORMAT_ARGB32 ;
 int CAIRO_HINT_STYLE_FULL ;
 int WL_SHM_FORMAT_ARGB8888 ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_font_options_create () ;
 int cairo_font_options_destroy (int *) ;
 int cairo_font_options_set_antialias (int *,int ) ;
 int cairo_font_options_set_hint_style (int *,int ) ;
 int cairo_font_options_set_subpixel_order (int *,int ) ;
 int cairo_format_stride_for_width (int ,int) ;
 int * cairo_image_surface_create (int ,int,int) ;
 unsigned char* cairo_image_surface_get_data (int *) ;
 int cairo_move_to (int *,int ,int ) ;
 int cairo_paint (int *) ;
 int cairo_set_antialias (int *,int ) ;
 int cairo_set_font_options (int *,int *) ;
 int cairo_set_source_rgba (int *,int ,int ,int ,int ) ;
 int cairo_surface_destroy (int *) ;
 int cairo_surface_flush (int *) ;
 TYPE_2__* config ;
 struct sway_output* container_get_effective_output (struct sway_container*) ;
 int g_object_unref (int *) ;
 int get_text_size (int *,int ,int*,int *,int *,double,int ,char*,int ) ;
 int * pango_cairo_create_context (int *) ;
 int pango_printf (int *,int ,double,int ,char*,int ) ;
 int to_cairo_subpixel_order (int ) ;
 struct wlr_renderer* wlr_backend_get_renderer (int ) ;
 int wlr_texture_destroy (struct wlr_texture*) ;
 struct wlr_texture* wlr_texture_from_pixels (struct wlr_renderer*,int ,int,int,int,unsigned char*) ;

__attribute__((used)) static void update_title_texture(struct sway_container *con,
  struct wlr_texture **texture, struct border_colors *class) {
 struct sway_output *output = container_get_effective_output(con);
 if (!output) {
  return;
 }
 if (*texture) {
  wlr_texture_destroy(*texture);
  *texture = ((void*)0);
 }
 if (!con->formatted_title) {
  return;
 }

 double scale = output->wlr_output->scale;
 int width = 0;
 int height = con->title_height * scale;



 cairo_surface_t *dummy_surface = cairo_image_surface_create(
   CAIRO_FORMAT_ARGB32, 0, 0);
 cairo_t *c = cairo_create(dummy_surface);
 cairo_set_antialias(c, CAIRO_ANTIALIAS_BEST);
 cairo_font_options_t *fo = cairo_font_options_create();
 cairo_font_options_set_hint_style(fo, CAIRO_HINT_STYLE_FULL);
 cairo_font_options_set_antialias(fo, CAIRO_ANTIALIAS_SUBPIXEL);
 cairo_font_options_set_subpixel_order(fo, to_cairo_subpixel_order(output->wlr_output->subpixel));
 cairo_set_font_options(c, fo);
 get_text_size(c, config->font, &width, ((void*)0), ((void*)0), scale,
   config->pango_markup, "%s", con->formatted_title);
 cairo_surface_destroy(dummy_surface);
 cairo_destroy(c);

 cairo_surface_t *surface = cairo_image_surface_create(
   CAIRO_FORMAT_ARGB32, width, height);
 cairo_t *cairo = cairo_create(surface);
 cairo_set_antialias(cairo, CAIRO_ANTIALIAS_BEST);
 cairo_set_font_options(cairo, fo);
 cairo_font_options_destroy(fo);
 cairo_set_source_rgba(cairo, class->background[0], class->background[1],
   class->background[2], class->background[3]);
 cairo_paint(cairo);
 PangoContext *pango = pango_cairo_create_context(cairo);
 cairo_set_source_rgba(cairo, class->text[0], class->text[1],
   class->text[2], class->text[3]);
 cairo_move_to(cairo, 0, 0);

 pango_printf(cairo, config->font, scale, config->pango_markup,
   "%s", con->formatted_title);

 cairo_surface_flush(surface);
 unsigned char *data = cairo_image_surface_get_data(surface);
 int stride = cairo_format_stride_for_width(CAIRO_FORMAT_ARGB32, width);
 struct wlr_renderer *renderer = wlr_backend_get_renderer(
   output->wlr_output->backend);
 *texture = wlr_texture_from_pixels(
   renderer, WL_SHM_FORMAT_ARGB8888, stride, width, height, data);
 cairo_surface_destroy(surface);
 g_object_unref(pango);
 cairo_destroy(cairo);
}
