
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_input_device {int dummy; } ;
typedef int json_object ;


 int IPC_EVENT_INPUT ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int ipc_json_describe_input (struct sway_input_device*) ;
 int ipc_send_event (char const*,int ) ;
 int * json_object_new_object () ;
 int json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int ) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*) ;

void ipc_event_input(const char *change, struct sway_input_device *device) {
 if (!ipc_has_event_listeners(IPC_EVENT_INPUT)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending input event");

 json_object *json = json_object_new_object();
 json_object_object_add(json, "change", json_object_new_string(change));
 json_object_object_add(json, "input", ipc_json_describe_input(device));

 const char *json_string = json_object_to_json_string(json);
 ipc_send_event(json_string, IPC_EVENT_INPUT);
 json_object_put(json);
}
