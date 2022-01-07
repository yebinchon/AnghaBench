
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xkb_rule_names {int member_0; } ;
struct xkb_keymap {int dummy; } ;
struct xkb_context {int dummy; } ;
struct input_config {char* xkb_file; } ;
typedef int FILE ;


 int SWAY_ERROR ;
 int XKB_CONTEXT_NO_FLAGS ;
 int XKB_KEYMAP_COMPILE_NO_FLAGS ;
 int XKB_KEYMAP_FORMAT_TEXT_V1 ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int handle_xkb_context_log ;
 int input_config_fill_rule_names (struct input_config*,struct xkb_rule_names*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 char* strerror (int ) ;
 int sway_assert (struct xkb_context*,char*) ;
 int sway_log_errno (int ,char*,char*,char*) ;
 struct xkb_context* xkb_context_new (int ) ;
 int xkb_context_set_log_fn (struct xkb_context*,int ) ;
 int xkb_context_set_user_data (struct xkb_context*,char**) ;
 int xkb_context_unref (struct xkb_context*) ;
 struct xkb_keymap* xkb_keymap_new_from_file (struct xkb_context*,int *,int ,int ) ;
 struct xkb_keymap* xkb_keymap_new_from_names (struct xkb_context*,struct xkb_rule_names*,int ) ;

struct xkb_keymap *sway_keyboard_compile_keymap(struct input_config *ic,
  char **error) {
 struct xkb_context *context = xkb_context_new(XKB_CONTEXT_NO_FLAGS);
 if (!sway_assert(context, "cannot create XKB context")) {
  return ((void*)0);
 }
 xkb_context_set_user_data(context, error);
 xkb_context_set_log_fn(context, handle_xkb_context_log);

 struct xkb_keymap *keymap = ((void*)0);

 if (ic && ic->xkb_file) {
  FILE *keymap_file = fopen(ic->xkb_file, "r");
  if (!keymap_file) {
   if (error) {
    size_t len = snprintf(((void*)0), 0, "cannot read XKB file %s: %s",
      ic->xkb_file, strerror(errno)) + 1;
    *error = malloc(len);
    if (*error) {
     snprintf(*error, len, "cannot read XKB file %s: %s",
       ic->xkb_file, strerror(errno));
    } else {
     sway_log_errno(SWAY_ERROR, "cannot read XKB file %s: %s",
       ic->xkb_file, strerror(errno));
    }
   } else {
    sway_log_errno(SWAY_ERROR, "cannot read XKB file %s: %s",
      ic->xkb_file, strerror(errno));
   }
   goto cleanup;
  }

  keymap = xkb_keymap_new_from_file(context, keymap_file,
     XKB_KEYMAP_FORMAT_TEXT_V1, XKB_KEYMAP_COMPILE_NO_FLAGS);

  if (!fclose(keymap_file)) {
   sway_log_errno(SWAY_ERROR, "cannot close XKB file %s: %s",
     ic->xkb_file, strerror(errno));
  }
 } else {
  struct xkb_rule_names rules = {0};
  if (ic) {
   input_config_fill_rule_names(ic, &rules);
  }
  keymap = xkb_keymap_new_from_names(context, &rules,
   XKB_KEYMAP_COMPILE_NO_FLAGS);
 }

cleanup:
 xkb_context_set_user_data(context, ((void*)0));
 xkb_context_unref(context);
 return keymap;
}
