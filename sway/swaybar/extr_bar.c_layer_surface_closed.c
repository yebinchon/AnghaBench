
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zwlr_layer_surface_v1 {int dummy; } ;
struct swaybar_output {int dummy; } ;


 int swaybar_output_free (struct swaybar_output*) ;

__attribute__((used)) static void layer_surface_closed(void *_output,
  struct zwlr_layer_surface_v1 *surface) {
 struct swaybar_output *output = _output;
 swaybar_output_free(output);
}
