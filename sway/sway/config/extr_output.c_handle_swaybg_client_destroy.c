
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct sway_config {int * swaybg_client; TYPE_1__ swaybg_client_destroy; } ;


 struct sway_config* sway_config ;
 int swaybg_client_destroy ;
 struct sway_config* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_swaybg_client_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_config *sway_config =
  wl_container_of(listener, sway_config, swaybg_client_destroy);
 wl_list_remove(&sway_config->swaybg_client_destroy.link);
 wl_list_init(&sway_config->swaybg_client_destroy.link);
 sway_config->swaybg_client = ((void*)0);
}
