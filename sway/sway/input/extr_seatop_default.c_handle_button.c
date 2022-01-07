
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wlr_xwayland_surface {int surface; scalar_t__ override_redirect; } ;
struct wlr_xwayland {int dummy; } ;
struct wlr_surface {int dummy; } ;
struct TYPE_9__ {scalar_t__ keyboard_interactive; } ;
struct wlr_layer_surface_v1 {TYPE_3__ current; } ;
struct wlr_keyboard {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct sway_seat {int wlr_seat; struct sway_cursor* cursor; struct seatop_default_event* seatop_data; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_cursor {TYPE_4__* cursor; } ;
struct sway_container {scalar_t__ x; int width; scalar_t__ y; int height; scalar_t__ fullscreen_mode; int node; struct sway_container* parent; } ;
struct sway_binding {int dummy; } ;
struct seatop_default_event {int dummy; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
struct TYPE_12__ {scalar_t__ floating_mod; scalar_t__ tiling_drag_threshold; scalar_t__ tiling_drag; scalar_t__ floating_mod_inverse; TYPE_2__* current_mode; } ;
struct TYPE_7__ {struct wlr_xwayland* wlr_xwayland; } ;
struct TYPE_11__ {TYPE_1__ xwayland; } ;
struct TYPE_10__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {int mouse_bindings; } ;


 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_RIGHT ;
 scalar_t__ FULLSCREEN_NONE ;
 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 int WLR_BUTTON_PRESSED ;
 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_RIGHT ;
 int WLR_EDGE_TOP ;
 TYPE_6__* config ;
 scalar_t__ container_has_ancestor (struct sway_container*,struct sway_container*) ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 scalar_t__ container_is_fullscreen_or_child (struct sway_container*) ;
 int cursor_set_image (struct sway_cursor*,char const*,int *) ;
 int find_edge (struct sway_container*,struct wlr_surface*,struct sway_cursor*) ;
 int find_resize_edge (struct sway_container*,struct wlr_surface*,struct sway_cursor*) ;
 int free (char*) ;
 struct sway_binding* get_active_mouse_binding (struct seatop_default_event*,int ,scalar_t__,int,int,int,int,int,char*) ;
 char* input_device_get_identifier (struct wlr_input_device*) ;
 struct sway_node* node_at_coords (struct sway_seat*,scalar_t__,scalar_t__,struct wlr_surface**,double*,double*) ;
 int seat_execute_command (struct sway_seat*,struct sway_binding*) ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct sway_container* seat_get_focused_container (struct sway_seat*) ;
 int seat_pointer_notify_button (struct sway_seat*,scalar_t__,scalar_t__,int) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 int seat_set_focus_container (struct sway_seat*,struct sway_container*) ;
 int seat_set_focus_layer (struct sway_seat*,struct wlr_layer_surface_v1*) ;
 int seat_set_focus_surface (struct sway_seat*,int ,int) ;
 int seatop_begin_down (struct sway_seat*,struct sway_container*,scalar_t__,double,double) ;
 int seatop_begin_move_floating (struct sway_seat*,struct sway_container*) ;
 int seatop_begin_move_tiling (struct sway_seat*,struct sway_container*) ;
 int seatop_begin_move_tiling_threshold (struct sway_seat*,struct sway_container*) ;
 int seatop_begin_resize_floating (struct sway_seat*,struct sway_container*,int) ;
 int seatop_begin_resize_tiling (struct sway_seat*,struct sway_container*,int) ;
 TYPE_5__ server ;
 int state_add_button (struct seatop_default_event*,scalar_t__) ;
 int state_erase_button (struct seatop_default_event*,scalar_t__) ;
 char* strdup (char*) ;
 scalar_t__ wlr_keyboard_get_modifiers (struct wlr_keyboard*) ;
 struct wlr_layer_surface_v1* wlr_layer_surface_v1_from_wlr_surface (struct wlr_surface*) ;
 struct wlr_keyboard* wlr_seat_get_keyboard (int ) ;
 scalar_t__ wlr_surface_is_layer_surface (struct wlr_surface*) ;
 scalar_t__ wlr_surface_is_xwayland_surface (struct wlr_surface*) ;
 scalar_t__ wlr_xwayland_or_surface_wants_focus (struct wlr_xwayland_surface*) ;
 int wlr_xwayland_set_seat (struct wlr_xwayland*,int ) ;
 struct wlr_xwayland_surface* wlr_xwayland_surface_from_wlr_surface (struct wlr_surface*) ;

__attribute__((used)) static void handle_button(struct sway_seat *seat, uint32_t time_msec,
  struct wlr_input_device *device, uint32_t button,
  enum wlr_button_state state) {
 struct seatop_default_event *e = seat->seatop_data;
 struct sway_cursor *cursor = seat->cursor;


 struct wlr_surface *surface = ((void*)0);
 double sx, sy;
 struct sway_node *node = node_at_coords(seat,
   cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);

 struct sway_container *cont = node && node->type == N_CONTAINER ?
  node->sway_container : ((void*)0);
 bool is_floating = cont && container_is_floating(cont);
 bool is_floating_or_child = cont && container_is_floating_or_child(cont);
 bool is_fullscreen_or_child = cont && container_is_fullscreen_or_child(cont);
 enum wlr_edges edge = cont ? find_edge(cont, surface, cursor) : WLR_EDGE_NONE;
 enum wlr_edges resize_edge = cont && edge ?
  find_resize_edge(cont, surface, cursor) : WLR_EDGE_NONE;
 bool on_border = edge != WLR_EDGE_NONE;
 bool on_contents = cont && !on_border && surface;
 bool on_workspace = node && node->type == N_WORKSPACE;
 bool on_titlebar = cont && !on_border && !surface;


 struct wlr_keyboard *keyboard = wlr_seat_get_keyboard(seat->wlr_seat);
 uint32_t modifiers = keyboard ? wlr_keyboard_get_modifiers(keyboard) : 0;

 char *device_identifier = device ? input_device_get_identifier(device)
  : strdup("*");
 struct sway_binding *binding = ((void*)0);
 if (state == WLR_BUTTON_PRESSED) {
  state_add_button(e, button);
  binding = get_active_mouse_binding(e,
   config->current_mode->mouse_bindings, modifiers, 0,
   on_titlebar, on_border, on_contents, on_workspace,
   device_identifier);
 } else {
  binding = get_active_mouse_binding(e,
   config->current_mode->mouse_bindings, modifiers, 1,
   on_titlebar, on_border, on_contents, on_workspace,
   device_identifier);
  state_erase_button(e, button);
 }
 free(device_identifier);
 if (binding) {
  seat_execute_command(seat, binding);
  return;
 }


 if (node && node->type == N_WORKSPACE) {
  seat_set_focus(seat, node);
  return;
 }


 if (surface && wlr_surface_is_layer_surface(surface)) {
  struct wlr_layer_surface_v1 *layer =
   wlr_layer_surface_v1_from_wlr_surface(surface);
  if (layer->current.keyboard_interactive) {
   seat_set_focus_layer(seat, layer);
  }
  seat_pointer_notify_button(seat, time_msec, button, state);
  return;
 }


 if (cont && resize_edge && button == BTN_LEFT &&
   state == WLR_BUTTON_PRESSED && !is_floating) {
  seat_set_focus_container(seat, cont);
  seatop_begin_resize_tiling(seat, cont, edge);
  return;
 }


 bool mod_pressed = keyboard &&
  (wlr_keyboard_get_modifiers(keyboard) & config->floating_mod);
 if (cont && !is_floating_or_child && mod_pressed &&
   state == WLR_BUTTON_PRESSED) {
  uint32_t btn_resize = config->floating_mod_inverse ?
   BTN_LEFT : BTN_RIGHT;
  if (button == btn_resize) {
   edge = 0;
   edge |= cursor->cursor->x > cont->x + cont->width / 2 ?
    WLR_EDGE_RIGHT : WLR_EDGE_LEFT;
   edge |= cursor->cursor->y > cont->y + cont->height / 2 ?
    WLR_EDGE_BOTTOM : WLR_EDGE_TOP;

   const char *image = ((void*)0);
   if (edge == (WLR_EDGE_LEFT | WLR_EDGE_TOP)) {
    image = "nw-resize";
   } else if (edge == (WLR_EDGE_TOP | WLR_EDGE_RIGHT)) {
    image = "ne-resize";
   } else if (edge == (WLR_EDGE_RIGHT | WLR_EDGE_BOTTOM)) {
    image = "se-resize";
   } else if (edge == (WLR_EDGE_BOTTOM | WLR_EDGE_LEFT)) {
    image = "sw-resize";
   }
   cursor_set_image(seat->cursor, image, ((void*)0));
   seat_set_focus_container(seat, cont);
   seatop_begin_resize_tiling(seat, cont, edge);
   return;
  }
 }


 if (cont && is_floating_or_child && !is_fullscreen_or_child &&
   state == WLR_BUTTON_PRESSED) {
  uint32_t btn_move = config->floating_mod_inverse ? BTN_RIGHT : BTN_LEFT;
  if (button == btn_move && (mod_pressed || on_titlebar)) {
   while (cont->parent) {
    cont = cont->parent;
   }
   seat_set_focus_container(seat, cont);
   seatop_begin_move_floating(seat, cont);
   return;
  }
 }


 if (cont && is_floating_or_child && !is_fullscreen_or_child &&
   state == WLR_BUTTON_PRESSED) {

  if (button == BTN_LEFT && resize_edge != WLR_EDGE_NONE) {
   seatop_begin_resize_floating(seat, cont, resize_edge);
   return;
  }


  uint32_t btn_resize = config->floating_mod_inverse ?
   BTN_LEFT : BTN_RIGHT;
  if (mod_pressed && button == btn_resize) {
   struct sway_container *floater = cont;
   while (floater->parent) {
    floater = floater->parent;
   }
   edge = 0;
   edge |= cursor->cursor->x > floater->x + floater->width / 2 ?
    WLR_EDGE_RIGHT : WLR_EDGE_LEFT;
   edge |= cursor->cursor->y > floater->y + floater->height / 2 ?
    WLR_EDGE_BOTTOM : WLR_EDGE_TOP;
   seatop_begin_resize_floating(seat, floater, edge);
   return;
  }
 }


 if (config->tiling_drag && (mod_pressed || on_titlebar) &&
   state == WLR_BUTTON_PRESSED && !is_floating_or_child &&
   cont && cont->fullscreen_mode == FULLSCREEN_NONE) {
  struct sway_container *focus = seat_get_focused_container(seat);
  bool focused = focus == cont || container_has_ancestor(focus, cont);
  if (on_titlebar && !focused) {
   node = seat_get_focus_inactive(seat, &cont->node);
   seat_set_focus(seat, node);
  }


  if (!mod_pressed && config->tiling_drag_threshold > 0) {
   seatop_begin_move_tiling_threshold(seat, cont);
  } else {
   seatop_begin_move_tiling(seat, cont);
  }
  return;
 }


 if (surface && cont && state == WLR_BUTTON_PRESSED) {
  seat_set_focus_container(seat, cont);
  seatop_begin_down(seat, cont, time_msec, sx, sy);
  seat_pointer_notify_button(seat, time_msec, button, WLR_BUTTON_PRESSED);
  return;
 }


 if (cont && state == WLR_BUTTON_PRESSED) {
  node = seat_get_focus_inactive(seat, &cont->node);
  seat_set_focus(seat, node);
  seat_pointer_notify_button(seat, time_msec, button, state);
  return;
 }
 seat_pointer_notify_button(seat, time_msec, button, state);
}
