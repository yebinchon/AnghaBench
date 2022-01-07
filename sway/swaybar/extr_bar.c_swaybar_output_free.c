
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_output {struct swaybar_output* identifier; struct swaybar_output* name; int link; int workspaces; int hotspots; int * buffers; int output; int xdg_output; int * input_region; int * surface; int * layer_surface; } ;


 int SWAY_DEBUG ;
 int destroy_buffer (int *) ;
 int free (struct swaybar_output*) ;
 int free_hotspots (int *) ;
 int free_workspaces (int *) ;
 int sway_log (int ,char*,struct swaybar_output*) ;
 int wl_list_remove (int *) ;
 int wl_output_destroy (int ) ;
 int wl_region_destroy (int *) ;
 int wl_surface_destroy (int *) ;
 int zwlr_layer_surface_v1_destroy (int *) ;
 int zxdg_output_v1_destroy (int ) ;

__attribute__((used)) static void swaybar_output_free(struct swaybar_output *output) {
 if (!output) {
  return;
 }
 sway_log(SWAY_DEBUG, "Removing output %s", output->name);
 if (output->layer_surface != ((void*)0)) {
  zwlr_layer_surface_v1_destroy(output->layer_surface);
 }
 if (output->surface != ((void*)0)) {
  wl_surface_destroy(output->surface);
 }
 if (output->input_region != ((void*)0)) {
  wl_region_destroy(output->input_region);
 }
 zxdg_output_v1_destroy(output->xdg_output);
 wl_output_destroy(output->output);
 destroy_buffer(&output->buffers[0]);
 destroy_buffer(&output->buffers[1]);
 free_hotspots(&output->hotspots);
 free_workspaces(&output->workspaces);
 wl_list_remove(&output->link);
 free(output->name);
 free(output->identifier);
 free(output);
}
