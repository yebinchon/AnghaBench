
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_state {int dummy; } ;


 int xkb_keymap_unref (int ) ;
 int xkb_state_get_keymap (struct xkb_state*) ;
 int xkb_state_unref (struct xkb_state*) ;

__attribute__((used)) static void keysym_translation_state_destroy(
  struct xkb_state *state) {
 xkb_keymap_unref(xkb_state_get_keymap(state));
 xkb_state_unref(state);
}
