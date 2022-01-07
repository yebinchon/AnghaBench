
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int IPC_EVENT_TICK ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int ipc_send_event (char const*,int ) ;
 int json_object_new_boolean (int) ;
 int * json_object_new_object () ;
 int json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int ) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static void ipc_event_tick(const char *payload) {
 if (!ipc_has_event_listeners(IPC_EVENT_TICK)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending tick event");

 json_object *json = json_object_new_object();
 json_object_object_add(json, "first", json_object_new_boolean(0));
 json_object_object_add(json, "payload", json_object_new_string(payload));

 const char *json_string = json_object_to_json_string(json);
 ipc_send_event(json_string, IPC_EVENT_TICK);
 json_object_put(json);
}
