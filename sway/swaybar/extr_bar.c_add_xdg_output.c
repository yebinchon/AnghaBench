
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaybar_output {int * xdg_output; int output; TYPE_1__* bar; } ;
struct TYPE_2__ {int * xdg_output_manager; } ;


 int assert (int ) ;
 int xdg_output_listener ;
 int * zxdg_output_manager_v1_get_xdg_output (int *,int ) ;
 int zxdg_output_v1_add_listener (int *,int *,struct swaybar_output*) ;

__attribute__((used)) static void add_xdg_output(struct swaybar_output *output) {
 if (output->xdg_output != ((void*)0)) {
  return;
 }
 assert(output->bar->xdg_output_manager != ((void*)0));
 output->xdg_output = zxdg_output_manager_v1_get_xdg_output(
  output->bar->xdg_output_manager, output->output);
 zxdg_output_v1_add_listener(output->xdg_output, &xdg_output_listener,
  output);
}
