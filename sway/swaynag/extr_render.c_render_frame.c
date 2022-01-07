
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct swaynag {int height; int width; int scale; int display; int surface; TYPE_1__* current_buffer; int buffers; int shm; int layer_surface; int run_display; } ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_2__ {int buffer; int * cairo; } ;


 int CAIRO_CONTENT_COLOR_ALPHA ;
 int CAIRO_OPERATOR_CLEAR ;
 int SWAY_DEBUG ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_paint (int *) ;
 int * cairo_recording_surface_create (int ,int *) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_surface (int *,int *,double,double) ;
 int cairo_surface_destroy (int *) ;
 TYPE_1__* get_next_buffer (int ,int ,int,int) ;
 int render_to_cairo (int *,struct swaynag*) ;
 int sway_log (int ,char*) ;
 int wl_display_roundtrip (int ) ;
 int wl_surface_attach (int ,int ,int ,int ) ;
 int wl_surface_commit (int ) ;
 int wl_surface_damage (int ,int ,int ,int,int) ;
 int wl_surface_set_buffer_scale (int ,int) ;
 int zwlr_layer_surface_v1_set_exclusive_zone (int ,int) ;
 int zwlr_layer_surface_v1_set_size (int ,int ,int) ;

void render_frame(struct swaynag *swaynag) {
 if (!swaynag->run_display) {
  return;
 }

 cairo_surface_t *recorder = cairo_recording_surface_create(
   CAIRO_CONTENT_COLOR_ALPHA, ((void*)0));
 cairo_t *cairo = cairo_create(recorder);
 cairo_save(cairo);
 cairo_set_operator(cairo, CAIRO_OPERATOR_CLEAR);
 cairo_paint(cairo);
 cairo_restore(cairo);
 uint32_t height = render_to_cairo(cairo, swaynag);
 if (height != swaynag->height) {
  zwlr_layer_surface_v1_set_size(swaynag->layer_surface, 0, height);
  zwlr_layer_surface_v1_set_exclusive_zone(swaynag->layer_surface,
    height);
  wl_surface_commit(swaynag->surface);
  wl_display_roundtrip(swaynag->display);
 } else {
  swaynag->current_buffer = get_next_buffer(swaynag->shm,
    swaynag->buffers,
    swaynag->width * swaynag->scale,
    swaynag->height * swaynag->scale);
  if (!swaynag->current_buffer) {
   sway_log(SWAY_DEBUG, "Failed to get buffer. Skipping frame.");
   goto cleanup;
  }

  cairo_t *shm = swaynag->current_buffer->cairo;
  cairo_save(shm);
  cairo_set_operator(shm, CAIRO_OPERATOR_CLEAR);
  cairo_paint(shm);
  cairo_restore(shm);
  cairo_set_source_surface(shm, recorder, 0.0, 0.0);
  cairo_paint(shm);

  wl_surface_set_buffer_scale(swaynag->surface, swaynag->scale);
  wl_surface_attach(swaynag->surface,
    swaynag->current_buffer->buffer, 0, 0);
  wl_surface_damage(swaynag->surface, 0, 0,
    swaynag->width, swaynag->height);
  wl_surface_commit(swaynag->surface);
  wl_display_roundtrip(swaynag->display);
 }

cleanup:
 cairo_surface_destroy(recorder);
 cairo_destroy(cairo);
}
