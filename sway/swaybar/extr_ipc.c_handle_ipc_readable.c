
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int mode_pango_markup; int * mode; int visible_by_mode; int ipc_event_socketfd; } ;
struct ipc_response {int type; int payload; } ;
typedef int json_object ;






 int SWAY_ERROR ;
 int determine_bar_visibility (struct swaybar*,int) ;
 int free (int *) ;
 int free_ipc_response (struct ipc_response*) ;
 int handle_bar_state_update (struct swaybar*,int *) ;
 int handle_barconfig_update (struct swaybar*,int ,int *) ;
 int ipc_get_workspaces (struct swaybar*) ;
 struct ipc_response* ipc_recv_response (int ) ;
 int json_object_get_boolean (int *) ;
 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int json_object_put (int *) ;
 int * json_tokener_parse (int ) ;
 int strcmp (char const*,char*) ;
 int * strdup (char const*) ;
 int sway_log (int ,char*) ;

bool handle_ipc_readable(struct swaybar *bar) {
 struct ipc_response *resp = ipc_recv_response(bar->ipc_event_socketfd);
 if (!resp) {
  return 0;
 }

 json_object *result = json_tokener_parse(resp->payload);
 if (!result) {
  sway_log(SWAY_ERROR, "failed to parse payload as json");
  free_ipc_response(resp);
  return 0;
 }

 bool bar_is_dirty = 1;
 switch (resp->type) {
 case 128:
  bar_is_dirty = ipc_get_workspaces(bar);
  break;
 case 129: {
  json_object *json_change, *json_pango_markup;
  if (json_object_object_get_ex(result, "change", &json_change)) {
   const char *change = json_object_get_string(json_change);
   free(bar->mode);
   bar->mode = strcmp(change, "default") != 0 ? strdup(change) : ((void*)0);
   bar->visible_by_mode = bar->mode != ((void*)0);
   determine_bar_visibility(bar, 0);
  } else {
   sway_log(SWAY_ERROR, "failed to parse response");
   bar_is_dirty = 0;
   break;
  }
  if (json_object_object_get_ex(result,
     "pango_markup", &json_pango_markup)) {
   bar->mode_pango_markup = json_object_get_boolean(json_pango_markup);
  }
  break;
 }
 case 131:
  bar_is_dirty = handle_barconfig_update(bar, resp->payload, result);
  break;
 case 130:
  bar_is_dirty = handle_bar_state_update(bar, result);
  break;
 default:
  bar_is_dirty = 0;
  break;
 }
 json_object_put(result);
 free_ipc_response(resp);
 return bar_is_dirty;
}
