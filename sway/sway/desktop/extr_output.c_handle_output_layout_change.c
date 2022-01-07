
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_server {int dummy; } ;


 int output_layout_change ;
 struct sway_server* server ;
 int update_output_manager_config (struct sway_server*) ;
 struct sway_server* wl_container_of (struct wl_listener*,int ,int ) ;

void handle_output_layout_change(struct wl_listener *listener,
  void *data) {
 struct sway_server *server =
  wl_container_of(listener, server, output_layout_change);
 update_output_manager_config(server);
}
