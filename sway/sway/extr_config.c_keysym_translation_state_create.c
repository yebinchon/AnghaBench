
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_state {int dummy; } ;
struct xkb_rule_names {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct xkb_context {int dummy; } ;


 int XKB_CONTEXT_NO_FLAGS ;
 int XKB_KEYMAP_COMPILE_NO_FLAGS ;
 struct xkb_context* xkb_context_new (int ) ;
 int xkb_context_unref (struct xkb_context*) ;
 struct xkb_keymap* xkb_keymap_new_from_names (struct xkb_context*,struct xkb_rule_names*,int ) ;
 struct xkb_state* xkb_state_new (struct xkb_keymap*) ;

__attribute__((used)) static struct xkb_state *keysym_translation_state_create(
  struct xkb_rule_names rules) {
 struct xkb_context *context = xkb_context_new(XKB_CONTEXT_NO_FLAGS);
 struct xkb_keymap *xkb_keymap = xkb_keymap_new_from_names(
  context,
  &rules,
  XKB_KEYMAP_COMPILE_NO_FLAGS);

 xkb_context_unref(context);
 return xkb_state_new(xkb_keymap);
}
