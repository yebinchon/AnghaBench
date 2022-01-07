
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_surface {int resource; } ;
struct wlr_seat_pointer_request_set_cursor_event {int hotspot_y; int hotspot_x; int surface; TYPE_3__* seat_client; } ;
struct wl_listener {int dummy; } ;
struct wl_client {int dummy; } ;
struct sway_cursor {TYPE_4__* seat; } ;
struct TYPE_8__ {TYPE_2__* wlr_seat; } ;
struct TYPE_7__ {struct wl_client* client; } ;
struct TYPE_5__ {struct wlr_surface* focused_surface; } ;
struct TYPE_6__ {TYPE_1__ pointer_state; } ;


 int SWAY_DEBUG ;
 struct sway_cursor* cursor ;
 int cursor_set_image_surface (struct sway_cursor*,int ,int ,int ,struct wl_client*) ;
 int request_set_cursor ;
 int seatop_allows_set_cursor (TYPE_4__*) ;
 int sway_log (int ,char*) ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 struct wl_client* wl_resource_get_client (int ) ;

__attribute__((used)) static void handle_request_set_cursor(struct wl_listener *listener,
  void *data) {
 struct sway_cursor *cursor =
  wl_container_of(listener, cursor, request_set_cursor);
 if (!seatop_allows_set_cursor(cursor->seat)) {
  return;
 }
 struct wlr_seat_pointer_request_set_cursor_event *event = data;

 struct wl_client *focused_client = ((void*)0);
 struct wlr_surface *focused_surface =
  cursor->seat->wlr_seat->pointer_state.focused_surface;
 if (focused_surface != ((void*)0)) {
  focused_client = wl_resource_get_client(focused_surface->resource);
 }


 if (focused_client == ((void*)0) ||
   event->seat_client->client != focused_client) {
  sway_log(SWAY_DEBUG, "denying request to set cursor from unfocused client");
  return;
 }

 cursor_set_image_surface(cursor, event->surface, event->hotspot_x,
   event->hotspot_y, focused_client);
}
