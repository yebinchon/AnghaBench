
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_callback {int dummy; } ;
struct swaybar_output {int height; scalar_t__ width; int scale; int frame_scheduled; int * surface; TYPE_4__* current_buffer; int buffers; TYPE_3__* bar; int layer_surface; int subpixel; int hotspots; } ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
typedef int cairo_font_options_t ;
struct TYPE_8__ {int buffer; int * cairo; } ;
struct TYPE_7__ {int shm; TYPE_2__* config; } ;
struct TYPE_5__ {int left; int bottom; int right; int top; } ;
struct TYPE_6__ {int height; int mode; TYPE_1__ gaps; } ;


 int CAIRO_ANTIALIAS_BEST ;
 int CAIRO_ANTIALIAS_SUBPIXEL ;
 int CAIRO_CONTENT_COLOR_ALPHA ;
 int CAIRO_HINT_STYLE_FULL ;
 int CAIRO_OPERATOR_CLEAR ;
 int assert (int ) ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_font_options_create () ;
 int cairo_font_options_destroy (int *) ;
 int cairo_font_options_set_antialias (int *,int ) ;
 int cairo_font_options_set_hint_style (int *,int ) ;
 int cairo_font_options_set_subpixel_order (int *,int ) ;
 int cairo_paint (int *) ;
 int * cairo_recording_surface_create (int ,int *) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_set_antialias (int *,int ) ;
 int cairo_set_font_options (int *,int *) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_surface (int *,int *,double,double) ;
 int cairo_surface_destroy (int *) ;
 int free_hotspots (int *) ;
 TYPE_4__* get_next_buffer (int ,int ,int,int) ;
 int output_frame_listener ;
 int render_to_cairo (int *,struct swaybar_output*) ;
 scalar_t__ strcmp (int ,char*) ;
 int to_cairo_subpixel_order (int ) ;
 int wl_callback_add_listener (struct wl_callback*,int *,struct swaybar_output*) ;
 int wl_surface_attach (int *,int ,int ,int ) ;
 int wl_surface_commit (int *) ;
 int wl_surface_damage (int *,int ,int ,int,int) ;
 struct wl_callback* wl_surface_frame (int *) ;
 int wl_surface_set_buffer_scale (int *,int) ;
 int zwlr_layer_surface_v1_set_exclusive_zone (int ,int) ;
 int zwlr_layer_surface_v1_set_margin (int ,int ,int ,int ,int ) ;
 int zwlr_layer_surface_v1_set_size (int ,int ,int) ;

void render_frame(struct swaybar_output *output) {
 assert(output->surface != ((void*)0));
 if (!output->layer_surface) {
  return;
 }

 free_hotspots(&output->hotspots);

 cairo_surface_t *recorder = cairo_recording_surface_create(
   CAIRO_CONTENT_COLOR_ALPHA, ((void*)0));
 cairo_t *cairo = cairo_create(recorder);
 cairo_set_antialias(cairo, CAIRO_ANTIALIAS_BEST);
 cairo_font_options_t *fo = cairo_font_options_create();
 cairo_font_options_set_hint_style(fo, CAIRO_HINT_STYLE_FULL);
 cairo_font_options_set_antialias(fo, CAIRO_ANTIALIAS_SUBPIXEL);
 cairo_font_options_set_subpixel_order(fo, to_cairo_subpixel_order(output->subpixel));
 cairo_set_font_options(cairo, fo);
 cairo_font_options_destroy(fo);
 cairo_save(cairo);
 cairo_set_operator(cairo, CAIRO_OPERATOR_CLEAR);
 cairo_paint(cairo);
 cairo_restore(cairo);
 uint32_t height = render_to_cairo(cairo, output);
 int config_height = output->bar->config->height;
 if (config_height > 0) {
  height = config_height;
 }
 if (height != output->height || output->width == 0) {

  zwlr_layer_surface_v1_set_size(output->layer_surface, 0, height);
  zwlr_layer_surface_v1_set_margin(output->layer_surface,
    output->bar->config->gaps.top,
    output->bar->config->gaps.right,
    output->bar->config->gaps.bottom,
    output->bar->config->gaps.left);
  if (strcmp(output->bar->config->mode, "dock") == 0) {
   zwlr_layer_surface_v1_set_exclusive_zone(output->layer_surface, height);
  }


  wl_surface_commit(output->surface);
 } else if (height > 0) {

  output->current_buffer = get_next_buffer(output->bar->shm,
    output->buffers,
    output->width * output->scale,
    output->height * output->scale);
  if (!output->current_buffer) {
   cairo_surface_destroy(recorder);
   cairo_destroy(cairo);
   return;
  }
  cairo_t *shm = output->current_buffer->cairo;

  cairo_save(shm);
  cairo_set_operator(shm, CAIRO_OPERATOR_CLEAR);
  cairo_paint(shm);
  cairo_restore(shm);

  cairo_set_source_surface(shm, recorder, 0.0, 0.0);
  cairo_paint(shm);

  wl_surface_set_buffer_scale(output->surface, output->scale);
  wl_surface_attach(output->surface,
    output->current_buffer->buffer, 0, 0);
  wl_surface_damage(output->surface, 0, 0,
    output->width, output->height);

  struct wl_callback *frame_callback = wl_surface_frame(output->surface);
  wl_callback_add_listener(frame_callback, &output_frame_listener, output);
  output->frame_scheduled = 1;

  wl_surface_commit(output->surface);
 }
 cairo_surface_destroy(recorder);
 cairo_destroy(cairo);
}
