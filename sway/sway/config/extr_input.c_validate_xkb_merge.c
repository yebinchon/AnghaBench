
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_keymap {int dummy; } ;
struct input_config {int dummy; } ;


 int free_input_config (struct input_config*) ;
 int merge_input_config (struct input_config*,struct input_config*) ;
 struct input_config* new_input_config (char*) ;
 struct xkb_keymap* sway_keyboard_compile_keymap (struct input_config*,char**) ;
 int xkb_keymap_unref (struct xkb_keymap*) ;

__attribute__((used)) static bool validate_xkb_merge(struct input_config *dest,
  struct input_config *src, char **xkb_error) {
 struct input_config *temp = new_input_config("temp");
 if (dest) {
  merge_input_config(temp, dest);
 }
 merge_input_config(temp, src);

 struct xkb_keymap *keymap = sway_keyboard_compile_keymap(temp, xkb_error);
 free_input_config(temp);
 if (!keymap) {
  return 0;
 }

 xkb_keymap_unref(keymap);
 return 1;
}
