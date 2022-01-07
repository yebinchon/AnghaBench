
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_output {scalar_t__ layer_surface; scalar_t__ input_region; int surface; int output; struct swaybar* bar; } ;
struct swaybar_config {int position; int mode; } ;
struct swaybar {int compositor; int layer_shell; struct swaybar_config* config; } ;


 int ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM ;
 int ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY ;
 int assert (scalar_t__) ;
 int layer_surface_listener ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ wl_compositor_create_region (int ) ;
 int wl_surface_set_input_region (int ,scalar_t__) ;
 scalar_t__ zwlr_layer_shell_v1_get_layer_surface (int ,int ,int ,int ,char*) ;
 int zwlr_layer_surface_v1_add_listener (scalar_t__,int *,struct swaybar_output*) ;
 int zwlr_layer_surface_v1_set_anchor (scalar_t__,int ) ;
 int zwlr_layer_surface_v1_set_exclusive_zone (scalar_t__,int) ;

__attribute__((used)) static void add_layer_surface(struct swaybar_output *output) {
 if (output->layer_surface) {
  return;
 }
 struct swaybar *bar = output->bar;

 struct swaybar_config *config = bar->config;
 bool hidden = strcmp(config->mode, "hide") == 0;
 bool overlay = !hidden && strcmp(config->mode, "overlay") == 0;
 output->layer_surface = zwlr_layer_shell_v1_get_layer_surface(
   bar->layer_shell, output->surface, output->output,
   hidden || overlay ? ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY :
   ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM, "panel");
 assert(output->layer_surface);
 zwlr_layer_surface_v1_add_listener(output->layer_surface,
   &layer_surface_listener, output);

 if (overlay) {

  output->input_region = wl_compositor_create_region(bar->compositor);
  assert(output->input_region);

  wl_surface_set_input_region(output->surface, output->input_region);
 }

 zwlr_layer_surface_v1_set_anchor(output->layer_surface, config->position);
 if (hidden || overlay) {
  zwlr_layer_surface_v1_set_exclusive_zone(output->layer_surface, -1);
 }
}
