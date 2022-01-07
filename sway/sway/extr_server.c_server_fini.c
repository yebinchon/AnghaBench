
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wlr_xwayland; } ;
struct sway_server {int transactions; int dirty_nodes; int wl_display; TYPE_1__ xwayland; } ;


 int list_free (int ) ;
 int wl_display_destroy (int ) ;
 int wl_display_destroy_clients (int ) ;
 int wlr_xwayland_destroy (int ) ;

void server_fini(struct sway_server *server) {




 wl_display_destroy_clients(server->wl_display);
 wl_display_destroy(server->wl_display);
 list_free(server->dirty_nodes);
 list_free(server->transactions);
}
