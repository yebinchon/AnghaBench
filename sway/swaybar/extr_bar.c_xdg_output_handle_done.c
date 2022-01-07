
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {int surface; int link; int * name; struct swaybar* bar; } ;
struct swaybar {TYPE_1__* config; scalar_t__ running; int compositor; int outputs; int unused_outputs; } ;
struct TYPE_2__ {scalar_t__ workspace_buttons; } ;


 int assert (int ) ;
 int bar_uses_output (struct swaybar_output*) ;
 int determine_bar_visibility (struct swaybar*,int) ;
 int ipc_get_workspaces (struct swaybar*) ;
 int wl_compositor_create_surface (int ) ;
 int wl_list_empty (int *) ;
 int wl_list_insert (int *,int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void xdg_output_handle_done(void *data,
  struct zxdg_output_v1 *xdg_output) {
 struct swaybar_output *output = data;
 struct swaybar *bar = output->bar;

 if (!wl_list_empty(&output->link)) {
  return;
 }

 assert(output->name != ((void*)0));
 if (!bar_uses_output(output)) {
  wl_list_remove(&output->link);
  wl_list_insert(&bar->unused_outputs, &output->link);
  return;
 }

 wl_list_remove(&output->link);
 wl_list_insert(&bar->outputs, &output->link);

 output->surface = wl_compositor_create_surface(bar->compositor);
 assert(output->surface);

 determine_bar_visibility(bar, 0);

 if (bar->running && bar->config->workspace_buttons) {
  ipc_get_workspaces(bar);
 }
}
