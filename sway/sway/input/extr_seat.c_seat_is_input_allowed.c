
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int resource; } ;
struct wl_client {int dummy; } ;
struct sway_seat {struct wl_client* exclusive_client; } ;


 struct wl_client* wl_resource_get_client (int ) ;

bool seat_is_input_allowed(struct sway_seat *seat,
  struct wlr_surface *surface) {
 struct wl_client *client = wl_resource_get_client(surface->resource);
 return !seat->exclusive_client || seat->exclusive_client == client;
}
