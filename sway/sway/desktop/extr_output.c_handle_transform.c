
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_output {int server; int configured; int enabled; } ;


 int arrange_layers (struct sway_output*) ;
 int arrange_output (struct sway_output*) ;
 struct sway_output* output ;
 int transaction_commit_dirty () ;
 int transform ;
 int update_output_manager_config (int ) ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_transform(struct wl_listener *listener, void *data) {
 struct sway_output *output = wl_container_of(listener, output, transform);
 if (!output->enabled || !output->configured) {
  return;
 }
 arrange_layers(output);
 arrange_output(output);
 transaction_commit_dirty();

 update_output_manager_config(output->server);
}
