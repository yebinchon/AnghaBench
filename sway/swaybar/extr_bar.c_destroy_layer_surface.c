
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_output {int frame_scheduled; scalar_t__ width; int * layer_surface; int surface; } ;


 int wl_surface_attach (int ,int *,int ,int ) ;
 int zwlr_layer_surface_v1_destroy (int *) ;

void destroy_layer_surface(struct swaybar_output *output) {
 if (!output->layer_surface) {
  return;
 }
 zwlr_layer_surface_v1_destroy(output->layer_surface);
 wl_surface_attach(output->surface, ((void*)0), 0, 0);
 output->layer_surface = ((void*)0);
 output->width = 0;
 output->frame_scheduled = 0;
}
