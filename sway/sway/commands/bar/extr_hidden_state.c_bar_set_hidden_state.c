
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct bar_config {char* hidden_state; int id; } ;
struct TYPE_2__ {int current_bar; int reading; } ;


 int CMD_INVALID ;
 int SWAY_DEBUG ;
 struct cmd_results* cmd_results_new (int ,char*,char const*) ;
 TYPE_1__* config ;
 int free (char*) ;
 int ipc_event_barconfig_update (struct bar_config*) ;
 scalar_t__ strcasecmp (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 void* strdup (char*) ;
 int sway_log (int ,char*,char const*,int ) ;

__attribute__((used)) static struct cmd_results *bar_set_hidden_state(struct bar_config *bar,
  const char *hidden_state) {
 char *old_state = bar->hidden_state;
 if (strcasecmp("toggle", hidden_state) == 0 && !config->reading) {
  if (strcasecmp("hide", bar->hidden_state) == 0) {
   bar->hidden_state = strdup("show");
  } else if (strcasecmp("show", bar->hidden_state) == 0) {
   bar->hidden_state = strdup("hide");
  }
 } else if (strcasecmp("hide", hidden_state) == 0) {
  bar->hidden_state = strdup("hide");
 } else if (strcasecmp("show", hidden_state) == 0) {
  bar->hidden_state = strdup("show");
 } else {
  return cmd_results_new(CMD_INVALID, "Invalid value %s", hidden_state);
 }
 if (strcmp(old_state, bar->hidden_state) != 0) {
  if (!config->current_bar) {
   ipc_event_barconfig_update(bar);
  }
  sway_log(SWAY_DEBUG, "Setting hidden_state: '%s' for bar: %s",
    bar->hidden_state, bar->id);
 }

 free(old_state);
 return ((void*)0);
}
