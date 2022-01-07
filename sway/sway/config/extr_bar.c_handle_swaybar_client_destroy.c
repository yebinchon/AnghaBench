
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct bar_config {int * client; TYPE_1__ client_destroy; } ;


 struct bar_config* bar ;
 int client_destroy ;
 struct bar_config* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_swaybar_client_destroy(struct wl_listener *listener,
  void *data) {
 struct bar_config *bar = wl_container_of(listener, bar, client_destroy);
 wl_list_remove(&bar->client_destroy.link);
 wl_list_init(&bar->client_destroy.link);
 bar->client = ((void*)0);
}
