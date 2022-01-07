
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct swaybar_config {scalar_t__ workspace_buttons; scalar_t__ binding_mode_indicator; } ;
struct swaybar {char* id; int ipc_event_socketfd; struct swaybar_config* config; int ipc_socketfd; } ;


 int IPC_GET_BAR_CONFIG ;
 int IPC_SUBSCRIBE ;
 int free (char*) ;
 int ipc_parse_config (struct swaybar_config*,char*) ;
 char* ipc_single_command (int ,int ,char*,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

bool ipc_initialize(struct swaybar *bar) {
 uint32_t len = strlen(bar->id);
 char *res = ipc_single_command(bar->ipc_socketfd,
   IPC_GET_BAR_CONFIG, bar->id, &len);
 if (!ipc_parse_config(bar->config, res)) {
  free(res);
  return 0;
 }
 free(res);

 struct swaybar_config *config = bar->config;
 char subscribe[128];
 len = snprintf(subscribe, 128,
   "[ \"barconfig_update\" , \"bar_state_update\" %s %s ]",
   config->binding_mode_indicator ? ", \"mode\"" : "",
   config->workspace_buttons ? ", \"workspace\"" : "");
 free(ipc_single_command(bar->ipc_event_socketfd,
   IPC_SUBSCRIBE, subscribe, &len));
 return 1;
}
