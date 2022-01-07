
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xkb_keysym_t ;
typedef int xkb_keycode_t ;
struct xkb_keymap {int dummy; } ;
struct keycode_matches {scalar_t__ keysym; int count; int keycode; } ;
struct TYPE_2__ {int keysym_translation_state; } ;


 scalar_t__ XKB_KEY_NoSymbol ;
 TYPE_1__* config ;
 scalar_t__ xkb_state_key_get_one_sym (int ,int ) ;

__attribute__((used)) static void find_keycode(struct xkb_keymap *keymap,
  xkb_keycode_t keycode, void *data) {
 xkb_keysym_t keysym = xkb_state_key_get_one_sym(
   config->keysym_translation_state, keycode);

 if (keysym == XKB_KEY_NoSymbol) {
  return;
 }

 struct keycode_matches *matches = data;
 if (matches->keysym == keysym) {
  matches->keycode = keycode;
  matches->count++;
 }
}
