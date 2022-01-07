
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct swaynag_instance {int * client; TYPE_1__ client_destroy; } ;


 int client_destroy ;
 struct swaynag_instance* swaynag ;
 struct swaynag_instance* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_swaynag_client_destroy(struct wl_listener *listener,
  void *data) {
 struct swaynag_instance *swaynag =
  wl_container_of(listener, swaynag, client_destroy);
 wl_list_remove(&swaynag->client_destroy.link);
 wl_list_init(&swaynag->client_destroy.link);
 swaynag->client = ((void*)0);
}
