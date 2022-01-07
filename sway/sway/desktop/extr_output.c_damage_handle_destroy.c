
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_output {int enabled; } ;


 int damage_destroy ;
 struct sway_output* output ;
 int output_disable (struct sway_output*) ;
 int transaction_commit_dirty () ;
 struct sway_output* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void damage_handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_output *output =
  wl_container_of(listener, output, damage_destroy);
 if (!output->enabled) {
  return;
 }
 output_disable(output);
 transaction_commit_dirty();
}
