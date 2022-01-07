
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int xkb_mod_mask_t ;
typedef int xkb_mod_index_t ;
typedef int uint32_t ;
struct xkb_keymap {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct wlr_input_device {TYPE_4__* keyboard; } ;
struct TYPE_17__ {int notify; int link; } ;
struct sway_keyboard {scalar_t__ effective_layout; TYPE_3__* seat_device; TYPE_8__ keyboard_modifiers; TYPE_8__ keyboard_key; struct xkb_keymap* keymap; } ;
struct input_config {scalar_t__ xkb_numlock; scalar_t__ xkb_capslock; int repeat_rate; int repeat_delay; } ;
struct TYPE_18__ {struct wlr_input_device* wlr_device; } ;
struct TYPE_14__ {int modifiers; int key; } ;
struct TYPE_16__ {TYPE_2__ events; int * led_indexes; int xkb_state; } ;
struct TYPE_15__ {TYPE_9__* input_device; TYPE_1__* sway_seat; } ;
struct TYPE_13__ {struct wlr_seat* wlr_seat; } ;
struct TYPE_12__ {scalar_t__ reloading; } ;


 int INT_MIN ;
 int SWAY_ERROR ;
 int WLR_LED_COUNT ;
 int XKB_KEYMAP_FORMAT_TEXT_V1 ;
 int XKB_MOD_INVALID ;
 int XKB_MOD_NAME_CAPS ;
 int XKB_MOD_NAME_NUM ;
 TYPE_11__* config ;
 int free (char*) ;
 int handle_keyboard_key ;
 int handle_keyboard_modifiers ;
 struct input_config* input_device_get_config (TYPE_9__*) ;
 int ipc_event_input (char*,TYPE_9__*) ;
 int strcmp (char*,char*) ;
 struct xkb_keymap* sway_keyboard_compile_keymap (struct input_config*,int *) ;
 int sway_log (int ,char*) ;
 int wl_list_remove (int *) ;
 int wl_signal_add (int *,TYPE_8__*) ;
 int wlr_keyboard_led_update (TYPE_4__*,int) ;
 int wlr_keyboard_notify_modifiers (TYPE_4__*,int ,int ,int,int ) ;
 int wlr_keyboard_set_keymap (TYPE_4__*,struct xkb_keymap*) ;
 int wlr_keyboard_set_repeat_info (TYPE_4__*,int,int) ;
 int wlr_seat_set_keyboard (struct wlr_seat*,struct wlr_input_device*) ;
 char* xkb_keymap_get_as_string (struct xkb_keymap*,int ) ;
 int xkb_keymap_unref (struct xkb_keymap*) ;
 int xkb_map_mod_get_index (struct xkb_keymap*,int ) ;
 scalar_t__ xkb_state_led_index_is_active (int ,int ) ;

void sway_keyboard_configure(struct sway_keyboard *keyboard) {
 struct input_config *input_config =
  input_device_get_config(keyboard->seat_device->input_device);
 struct wlr_input_device *wlr_device =
  keyboard->seat_device->input_device->wlr_device;

 struct xkb_keymap *keymap = sway_keyboard_compile_keymap(input_config, ((void*)0));
 if (!keymap) {
  sway_log(SWAY_ERROR, "Failed to compile keymap. Attempting defaults");
  keymap = sway_keyboard_compile_keymap(((void*)0), ((void*)0));
  if (!keymap) {
   sway_log(SWAY_ERROR,
     "Failed to compile default keymap. Aborting configure");
   return;
  }
 }

 bool keymap_changed = 0;
 bool effective_layout_changed = keyboard->effective_layout != 0;
 if (keyboard->keymap) {
  char *old_keymap_string = xkb_keymap_get_as_string(keyboard->keymap,
   XKB_KEYMAP_FORMAT_TEXT_V1);
  char *new_keymap_string = xkb_keymap_get_as_string(keymap,
   XKB_KEYMAP_FORMAT_TEXT_V1);
  keymap_changed = strcmp(old_keymap_string, new_keymap_string);
  free(old_keymap_string);
  free(new_keymap_string);
 } else {
  keymap_changed = 1;
 }

 if (keymap_changed || config->reloading) {
  xkb_keymap_unref(keyboard->keymap);
  keyboard->keymap = keymap;
  keyboard->effective_layout = 0;
  wlr_keyboard_set_keymap(wlr_device->keyboard, keyboard->keymap);

  xkb_mod_mask_t locked_mods = 0;
  if (input_config && input_config->xkb_numlock > 0) {
   xkb_mod_index_t mod_index = xkb_map_mod_get_index(keymap,
     XKB_MOD_NAME_NUM);
   if (mod_index != XKB_MOD_INVALID) {
          locked_mods |= (uint32_t)1 << mod_index;
   }
  }
  if (input_config && input_config->xkb_capslock > 0) {
   xkb_mod_index_t mod_index = xkb_map_mod_get_index(keymap,
     XKB_MOD_NAME_CAPS);
   if (mod_index != XKB_MOD_INVALID) {
          locked_mods |= (uint32_t)1 << mod_index;
   }
  }
  if (locked_mods) {
   wlr_keyboard_notify_modifiers(wlr_device->keyboard, 0, 0,
     locked_mods, 0);
   uint32_t leds = 0;
   for (uint32_t i = 0; i < WLR_LED_COUNT; ++i) {
    if (xkb_state_led_index_is_active(
      wlr_device->keyboard->xkb_state,
      wlr_device->keyboard->led_indexes[i])) {
     leds |= (1 << i);
    }
   }
   wlr_keyboard_led_update(wlr_device->keyboard, leds);
  }
 } else {
  xkb_keymap_unref(keymap);
 }

 int repeat_rate = 25;
 if (input_config && input_config->repeat_rate != INT_MIN) {
  repeat_rate = input_config->repeat_rate;
 }
 int repeat_delay = 600;
 if (input_config && input_config->repeat_delay != INT_MIN) {
  repeat_delay = input_config->repeat_delay;
 }
 wlr_keyboard_set_repeat_info(wlr_device->keyboard, repeat_rate,
   repeat_delay);

 struct wlr_seat *seat = keyboard->seat_device->sway_seat->wlr_seat;
 wlr_seat_set_keyboard(seat, wlr_device);

 wl_list_remove(&keyboard->keyboard_key.link);
 wl_signal_add(&wlr_device->keyboard->events.key, &keyboard->keyboard_key);
 keyboard->keyboard_key.notify = handle_keyboard_key;

 wl_list_remove(&keyboard->keyboard_modifiers.link);
 wl_signal_add(&wlr_device->keyboard->events.modifiers,
  &keyboard->keyboard_modifiers);
 keyboard->keyboard_modifiers.notify = handle_keyboard_modifiers;

 if (keymap_changed) {
  ipc_event_input("xkb_keymap",
   keyboard->seat_device->input_device);
 } else if (effective_layout_changed) {
  ipc_event_input("xkb_layout",
   keyboard->seat_device->input_device);
 }
}
