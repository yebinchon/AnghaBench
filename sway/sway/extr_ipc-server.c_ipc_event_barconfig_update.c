
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_config {int dummy; } ;
typedef int json_object ;


 int IPC_EVENT_BARCONFIG_UPDATE ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int * ipc_json_describe_bar_config (struct bar_config*) ;
 int ipc_send_event (char const*,int ) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*) ;

void ipc_event_barconfig_update(struct bar_config *bar) {
 if (!ipc_has_event_listeners(IPC_EVENT_BARCONFIG_UPDATE)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending barconfig_update event");
 json_object *json = ipc_json_describe_bar_config(bar);

 const char *json_string = json_object_to_json_string(json);
 ipc_send_event(json_string, IPC_EVENT_BARCONFIG_UPDATE);
 json_object_put(json);
}
