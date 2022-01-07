
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_config {int visible_by_modifier; int id; } ;
typedef int json_object ;


 int IPC_EVENT_BAR_STATE_UPDATE ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int ipc_send_event (char const*,int ) ;
 int json_object_new_boolean (int ) ;
 int * json_object_new_object () ;
 int json_object_new_string (int ) ;
 int json_object_object_add (int *,char*,int ) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*) ;

void ipc_event_bar_state_update(struct bar_config *bar) {
 if (!ipc_has_event_listeners(IPC_EVENT_BAR_STATE_UPDATE)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending bar_state_update event");

 json_object *json = json_object_new_object();
 json_object_object_add(json, "id", json_object_new_string(bar->id));
 json_object_object_add(json, "visible_by_modifier",
   json_object_new_boolean(bar->visible_by_modifier));

 const char *json_string = json_object_to_json_string(json);
 ipc_send_event(json_string, IPC_EVENT_BAR_STATE_UPDATE);
 json_object_put(json);
}
