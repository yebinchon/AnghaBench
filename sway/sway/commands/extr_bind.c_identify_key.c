
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xkb_keysym_t ;
typedef scalar_t__ xkb_keycode_t ;
typedef scalar_t__ uint32_t ;
struct cmd_results {int dummy; } ;
typedef enum binding_input_type { ____Placeholder_binding_input_type } binding_input_type ;


 int BINDING_KEYCODE ;
 int BINDING_MOUSECODE ;
 int BINDING_MOUSESYM ;
 int CMD_INVALID ;
 int XKB_KEYSYM_CASE_INSENSITIVE ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ get_mouse_bindcode (char const*,char**) ;
 scalar_t__ get_mouse_bindsym (char const*,char**) ;
 scalar_t__ strtol (char const*,int *,int) ;
 int xkb_keycode_is_legal_ext (scalar_t__) ;
 scalar_t__ xkb_keysym_from_name (char const*,int ) ;

__attribute__((used)) static struct cmd_results *identify_key(const char* name, bool first_key,
  uint32_t* key_val, enum binding_input_type* type) {
 if (*type == BINDING_MOUSECODE) {

  char *message = ((void*)0);
  uint32_t button = get_mouse_bindcode(name, &message);
  if (!button) {
   if (message) {
    struct cmd_results *error =
     cmd_results_new(CMD_INVALID, message);
    free(message);
    return error;
   } else {
    return cmd_results_new(CMD_INVALID,
      "Unknown button code %s", name);
   }
  }
  *key_val = button;
 } else if (*type == BINDING_MOUSESYM) {

  char *message = ((void*)0);
  uint32_t button = get_mouse_bindsym(name, &message);
  if (!button) {
   if (message) {
    struct cmd_results *error =
     cmd_results_new(CMD_INVALID, message);
    free(message);
    return error;
   } else if (!button) {
    return cmd_results_new(CMD_INVALID, "Unknown button %s", name);
   }
  }
  *key_val = button;
 } else if (*type == BINDING_KEYCODE) {

  if (first_key) {
   char *message = ((void*)0);
   uint32_t button = get_mouse_bindcode(name, &message);
   free(message);
   if (button) {
    *type = BINDING_MOUSECODE;
    *key_val = button;
    return ((void*)0);
   }
  }

  xkb_keycode_t keycode = strtol(name, ((void*)0), 10);
  if (!xkb_keycode_is_legal_ext(keycode)) {
   if (first_key) {
    return cmd_results_new(CMD_INVALID,
      "Invalid keycode or button code '%s'", name);
   } else {
    return cmd_results_new(CMD_INVALID,
      "Invalid keycode '%s'", name);
   }
  }
  *key_val = keycode;
 } else {

  if (first_key) {
   char *message = ((void*)0);
   uint32_t button = get_mouse_bindsym(name, &message);
   if (message) {
    struct cmd_results *error =
     cmd_results_new(CMD_INVALID, message);
    free(message);
    return error;
   } else if (button) {
    *type = BINDING_MOUSESYM;
    *key_val = button;
    return ((void*)0);
   }
  }

  xkb_keysym_t keysym = xkb_keysym_from_name(name,
    XKB_KEYSYM_CASE_INSENSITIVE);
  if (!keysym) {
   if (first_key) {
    return cmd_results_new(CMD_INVALID,
      "Unknown key or button '%s'", name);
   } else {
    return cmd_results_new(CMD_INVALID, "Unknown key '%s'", name);
   }
  }
  *key_val = keysym;
 }
 return ((void*)0);
}
