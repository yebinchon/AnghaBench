
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int link; } ;
struct sway_keyboard {int key_repeat_source; TYPE_2__ keyboard_modifiers; TYPE_1__ keyboard_key; scalar_t__ keymap; } ;


 int free (struct sway_keyboard*) ;
 int sway_keyboard_disarm_key_repeat (struct sway_keyboard*) ;
 int wl_event_source_remove (int ) ;
 int wl_list_remove (int *) ;
 int xkb_keymap_unref (scalar_t__) ;

void sway_keyboard_destroy(struct sway_keyboard *keyboard) {
 if (!keyboard) {
  return;
 }
 if (keyboard->keymap) {
  xkb_keymap_unref(keyboard->keymap);
 }
 wl_list_remove(&keyboard->keyboard_key.link);
 wl_list_remove(&keyboard->keyboard_modifiers.link);
 sway_keyboard_disarm_key_repeat(keyboard);
 wl_event_source_remove(keyboard->key_repeat_source);
 free(keyboard);
}
