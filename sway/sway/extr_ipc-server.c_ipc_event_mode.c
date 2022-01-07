
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int IPC_EVENT_MODE ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int ipc_send_event (char const*,int ) ;
 int json_object_new_boolean (int) ;
 int * json_object_new_object () ;
 int json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int ) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*,char const*) ;

void ipc_event_mode(const char *mode, bool pango) {
 if (!ipc_has_event_listeners(IPC_EVENT_MODE)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending mode::%s event", mode);
 json_object *obj = json_object_new_object();
 json_object_object_add(obj, "change", json_object_new_string(mode));
 json_object_object_add(obj, "pango_markup",
   json_object_new_boolean(pango));

 const char *json_string = json_object_to_json_string(obj);
 ipc_send_event(json_string, IPC_EVENT_MODE);
 json_object_put(obj);
}
