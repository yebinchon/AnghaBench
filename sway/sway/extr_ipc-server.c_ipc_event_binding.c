
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_binding {char* command; scalar_t__ type; TYPE_1__* keys; int modifiers; } ;
typedef int json_object ;
struct TYPE_2__ {int length; scalar_t__* items; } ;


 scalar_t__ BINDING_KEYCODE ;
 scalar_t__ BINDING_MOUSECODE ;
 scalar_t__ BINDING_MOUSESYM ;
 int BTN_LEFT ;
 int IPC_EVENT_BINDING ;
 int SWAY_DEBUG ;
 int get_modifier_names (char const**,int ) ;
 int ipc_has_event_listeners (int ) ;
 int ipc_send_event (char const*,int ) ;
 int json_object_array_add (int *,int *) ;
 int * json_object_get (int *) ;
 int * json_object_new_array () ;
 int * json_object_new_int (int) ;
 int * json_object_new_object () ;
 int * json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int *) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int snprintf (char*,int,char*,int) ;
 int sway_log (int ,char*) ;
 scalar_t__ xkb_keysym_get_name (int,char*,int) ;

void ipc_event_binding(struct sway_binding *binding) {
 if (!ipc_has_event_listeners(IPC_EVENT_BINDING)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending binding event");

 json_object *json_binding = json_object_new_object();
 json_object_object_add(json_binding, "command", json_object_new_string(binding->command));

 const char *names[10];
 int len = get_modifier_names(names, binding->modifiers);
 json_object *modifiers = json_object_new_array();
 for (int i = 0; i < len; ++i) {
  json_object_array_add(modifiers, json_object_new_string(names[i]));
 }
 json_object_object_add(json_binding, "event_state_mask", modifiers);

 json_object *input_codes = json_object_new_array();
 int input_code = 0;
 json_object *symbols = json_object_new_array();
 json_object *symbol = ((void*)0);

 if (binding->type == BINDING_KEYCODE) {
  uint32_t keycode;
  for (int i = 0; i < binding->keys->length; ++i) {
   keycode = *(uint32_t *)binding->keys->items[i];
   json_object_array_add(input_codes, json_object_new_int(keycode));
   if (i == 0) {
    input_code = keycode;
   }
  }
 } else {
  uint32_t keysym;
  char buffer[64];
  for (int i = 0; i < binding->keys->length; ++i) {
   keysym = *(uint32_t *)binding->keys->items[i];
   if (keysym >= BTN_LEFT && keysym <= BTN_LEFT + 8) {
    snprintf(buffer, 64, "button%u", keysym - BTN_LEFT + 1);
   } else if (xkb_keysym_get_name(keysym, buffer, 64) < 0) {
    continue;
   }

   json_object *str = json_object_new_string(buffer);
   if (i == 0) {


    json_object_array_add(symbols, json_object_get(str));
    symbol = str;
   } else {
    json_object_array_add(symbols, str);
   }
  }
 }

 json_object_object_add(json_binding, "input_codes", input_codes);
 json_object_object_add(json_binding, "input_code", json_object_new_int(input_code));
 json_object_object_add(json_binding, "symbols", symbols);
 json_object_object_add(json_binding, "symbol", symbol);

 bool mouse = binding->type == BINDING_MOUSECODE ||
  binding->type == BINDING_MOUSESYM;
 json_object_object_add(json_binding, "input_type", mouse
   ? json_object_new_string("mouse")
   : json_object_new_string("keyboard"));

 json_object *json = json_object_new_object();
 json_object_object_add(json, "change", json_object_new_string("run"));
 json_object_object_add(json, "binding", json_binding);
 const char *json_string = json_object_to_json_string(json);
 ipc_send_event(json_string, IPC_EVENT_BINDING);
 json_object_put(json);
}
