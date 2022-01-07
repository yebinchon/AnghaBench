
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xkb_layout_index_t ;
struct TYPE_2__ {int locked; int latched; int depressed; } ;
struct wlr_keyboard {TYPE_1__ modifiers; int keymap; } ;


 int wlr_keyboard_notify_modifiers (struct wlr_keyboard*,int ,int ,int ,scalar_t__) ;
 scalar_t__ xkb_keymap_num_layouts (int ) ;

__attribute__((used)) static void switch_layout(struct wlr_keyboard *kbd, xkb_layout_index_t idx) {
 xkb_layout_index_t num_layouts = xkb_keymap_num_layouts(kbd->keymap);
 if (idx >= num_layouts) {
  return;
 }
 wlr_keyboard_notify_modifiers(kbd, kbd->modifiers.depressed,
  kbd->modifiers.latched, kbd->modifiers.locked, idx);
}
