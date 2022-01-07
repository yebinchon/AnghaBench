
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int node; } ;
typedef int json_object ;


 int IPC_EVENT_WORKSPACE ;
 int SWAY_DEBUG ;
 int ipc_has_event_listeners (int ) ;
 int * ipc_json_describe_node_recursive (int *) ;
 int ipc_send_event (char const*,int ) ;
 int * json_object_new_object () ;
 int * json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,int *) ;
 int json_object_put (int *) ;
 char* json_object_to_json_string (int *) ;
 int sway_log (int ,char*,char const*) ;

void ipc_event_workspace(struct sway_workspace *old,
  struct sway_workspace *new, const char *change) {
 if (!ipc_has_event_listeners(IPC_EVENT_WORKSPACE)) {
  return;
 }
 sway_log(SWAY_DEBUG, "Sending workspace::%s event", change);
 json_object *obj = json_object_new_object();
 json_object_object_add(obj, "change", json_object_new_string(change));
 if (old) {
  json_object_object_add(obj, "old",
    ipc_json_describe_node_recursive(&old->node));
 } else {
  json_object_object_add(obj, "old", ((void*)0));
 }

 if (new) {
  json_object_object_add(obj, "current",
    ipc_json_describe_node_recursive(&new->node));
 } else {
  json_object_object_add(obj, "current", ((void*)0));
 }

 const char *json_string = json_object_to_json_string(obj);
 ipc_send_event(json_string, IPC_EVENT_WORKSPACE);
 json_object_put(obj);
}
