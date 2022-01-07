
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct sway_output {int server; int configured; int enabled; TYPE_1__* wlr_output; } ;
struct output_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int name; int * current_mode; } ;


 int SWAY_DEBUG ;
 int apply_output_config (struct output_config*,struct sway_output*) ;
 int arrange_layers (struct sway_output*) ;
 int arrange_output (struct sway_output*) ;
 struct output_config* find_output_config (struct sway_output*) ;
 int mode ;
 struct sway_output* output ;
 int sway_log (int ,char*,int ) ;
 int transaction_commit_dirty () ;
 int update_output_manager_config (int ) ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_mode(struct wl_listener *listener, void *data) {
 struct sway_output *output = wl_container_of(listener, output, mode);
 if (!output->configured && !output->enabled) {
  struct output_config *oc = find_output_config(output);
  if (output->wlr_output->current_mode != ((void*)0) &&
    (!oc || oc->enabled)) {



   sway_log(SWAY_DEBUG, "Output %s has gained a CRTC, "
    "trying to enable it", output->wlr_output->name);
   apply_output_config(oc, output);
  }
  return;
 }
 if (!output->enabled || !output->configured) {
  return;
 }
 arrange_layers(output);
 arrange_output(output);
 transaction_commit_dirty();

 update_output_manager_config(output->server);
}
