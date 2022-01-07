
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_switch_binding {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int length; struct sway_switch_binding** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_7__ {TYPE_1__* current_mode; } ;
struct TYPE_5__ {TYPE_2__* switch_bindings; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 scalar_t__ binding_switch_compare (struct sway_switch_binding*,struct sway_switch_binding*) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_4__* config ;
 int free_switch_binding (struct sway_switch_binding*) ;
 int list_del (TYPE_2__*,int) ;
 int sway_log (int ,char*,char const*,char const*) ;

__attribute__((used)) static struct cmd_results *switch_binding_remove(
  struct sway_switch_binding *binding, const char *bindtype,
  const char *switchcombo) {
 list_t *mode_bindings = config->current_mode->switch_bindings;
 for (int i = 0; i < mode_bindings->length; ++i) {
  struct sway_switch_binding *config_binding = mode_bindings->items[i];
  if (binding_switch_compare(binding, config_binding)) {
   free_switch_binding(config_binding);
   free_switch_binding(binding);
   list_del(mode_bindings, i);
   sway_log(SWAY_DEBUG, "%s - Unbound %s switch",
     bindtype, switchcombo);
   return cmd_results_new(CMD_SUCCESS, ((void*)0));
  }
 }

 free_switch_binding(binding);
 return cmd_results_new(CMD_FAILURE, "Could not find switch binding `%s`",
   switchcombo);
}
