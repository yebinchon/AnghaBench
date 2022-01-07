
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_registry {int dummy; } ;
struct swaynag_pointer {int cursor_surface; } ;
struct swaynag {int scale; scalar_t__ querying_outputs; int surface; int layer_surface; TYPE_2__* type; TYPE_1__* output; scalar_t__ layer_shell; scalar_t__ compositor; struct swaynag_pointer pointer; int display; scalar_t__ shm; int outputs; } ;
struct TYPE_4__ {int anchors; scalar_t__ output; } ;
struct TYPE_3__ {int * wl_output; } ;


 int EXIT_FAILURE ;
 int SWAY_ERROR ;
 int ZWLR_LAYER_SHELL_V1_LAYER_TOP ;
 int assert (int) ;
 int exit (int ) ;
 int layer_surface_listener ;
 int registry_listener ;
 int surface_listener ;
 int sway_abort (char*) ;
 int sway_log (int ,char*,scalar_t__) ;
 int swaynag_destroy (struct swaynag*) ;
 void* wl_compositor_create_surface (scalar_t__) ;
 int wl_display_connect (int *) ;
 struct wl_registry* wl_display_get_registry (int ) ;
 int wl_display_roundtrip (int ) ;
 int wl_list_init (int *) ;
 int wl_registry_add_listener (struct wl_registry*,int *,struct swaynag*) ;
 int wl_registry_destroy (struct wl_registry*) ;
 int wl_surface_add_listener (int,int *,struct swaynag*) ;
 int zwlr_layer_shell_v1_get_layer_surface (scalar_t__,int,int *,int ,char*) ;
 int zwlr_layer_surface_v1_add_listener (int,int *,struct swaynag*) ;
 int zwlr_layer_surface_v1_set_anchor (int,int ) ;

void swaynag_setup(struct swaynag *swaynag) {
 swaynag->display = wl_display_connect(((void*)0));
 if (!swaynag->display) {
  sway_abort("Unable to connect to the compositor. "
    "If your compositor is running, check or set the "
    "WAYLAND_DISPLAY environment variable.");
 }

 swaynag->scale = 1;
 wl_list_init(&swaynag->outputs);

 struct wl_registry *registry = wl_display_get_registry(swaynag->display);
 wl_registry_add_listener(registry, &registry_listener, swaynag);
 wl_display_roundtrip(swaynag->display);
 assert(swaynag->compositor && swaynag->layer_shell && swaynag->shm);

 while (swaynag->querying_outputs > 0) {
  wl_display_roundtrip(swaynag->display);
 }

 if (!swaynag->output && swaynag->type->output) {
  sway_log(SWAY_ERROR, "Output '%s' not found", swaynag->type->output);
  swaynag_destroy(swaynag);
  exit(EXIT_FAILURE);
 }

 struct swaynag_pointer *pointer = &swaynag->pointer;
 pointer->cursor_surface = wl_compositor_create_surface(swaynag->compositor);
 assert(pointer->cursor_surface);

 swaynag->surface = wl_compositor_create_surface(swaynag->compositor);
 assert(swaynag->surface);
 wl_surface_add_listener(swaynag->surface, &surface_listener, swaynag);

 swaynag->layer_surface = zwlr_layer_shell_v1_get_layer_surface(
   swaynag->layer_shell, swaynag->surface,
   swaynag->output ? swaynag->output->wl_output : ((void*)0),
   ZWLR_LAYER_SHELL_V1_LAYER_TOP, "swaynag");
 assert(swaynag->layer_surface);
 zwlr_layer_surface_v1_add_listener(swaynag->layer_surface,
   &layer_surface_listener, swaynag);
 zwlr_layer_surface_v1_set_anchor(swaynag->layer_surface,
   swaynag->type->anchors);

 wl_registry_destroy(registry);
}
