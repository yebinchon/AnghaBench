
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wlr_tablet_v2_event_cursor {int hotspot_y; int hotspot_x; int surface; TYPE_4__* seat_client; } ;
struct wlr_surface {int resource; } ;
struct wl_listener {int dummy; } ;
struct wl_client {int dummy; } ;
struct sway_tablet_tool {TYPE_1__* seat; } ;
struct sway_cursor {TYPE_5__* seat; } ;
struct TYPE_10__ {TYPE_3__* wlr_seat; } ;
struct TYPE_9__ {struct wl_client* client; } ;
struct TYPE_7__ {struct wlr_surface* focused_surface; } ;
struct TYPE_8__ {TYPE_2__ pointer_state; } ;
struct TYPE_6__ {struct sway_cursor* cursor; } ;


 int SWAY_DEBUG ;
 int cursor_set_image_surface (struct sway_cursor*,int ,int ,int ,struct wl_client*) ;
 int seatop_allows_set_cursor (TYPE_5__*) ;
 int set_cursor ;
 int sway_log (int ,char*) ;
 struct sway_tablet_tool* tool ;
 struct sway_tablet_tool* wl_container_of (struct wl_listener*,int ,int ) ;
 struct wl_client* wl_resource_get_client (int ) ;

__attribute__((used)) static void handle_tablet_tool_set_cursor(struct wl_listener *listener, void *data) {
 struct sway_tablet_tool *tool =
  wl_container_of(listener, tool, set_cursor);
 struct wlr_tablet_v2_event_cursor *event = data;

 struct sway_cursor *cursor = tool->seat->cursor;
 if (!seatop_allows_set_cursor(cursor->seat)) {
  return;
 }

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
