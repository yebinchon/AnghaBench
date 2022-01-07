
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xkb_keysym_t ;
struct keycode_matches {int count; int keycode; int keysym; } ;
struct TYPE_2__ {int keysym_translation_state; } ;


 int XKB_KEYCODE_INVALID ;
 TYPE_1__* config ;
 int find_keycode ;
 int xkb_keymap_key_for_each (int ,int ,struct keycode_matches*) ;
 int xkb_state_get_keymap (int ) ;

__attribute__((used)) static struct keycode_matches get_keycode_for_keysym(xkb_keysym_t keysym) {
 struct keycode_matches matches = {
  .keysym = keysym,
  .keycode = XKB_KEYCODE_INVALID,
  .count = 0,
 };

 xkb_keymap_key_for_each(
   xkb_state_get_keymap(config->keysym_translation_state),
   find_keycode, &matches);
 return matches;
}
