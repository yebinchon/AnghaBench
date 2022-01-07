
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_switch_binding {char const* command; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int length; struct sway_switch_binding** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_7__ {TYPE_1__* current_mode; } ;
struct TYPE_5__ {TYPE_2__* switch_bindings; } ;


 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 int SWAY_INFO ;
 scalar_t__ binding_switch_compare (struct sway_switch_binding*,struct sway_switch_binding*) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_4__* config ;
 int config_add_swaynag_warning (char*,char const*,char const*,char const*) ;
 int free_switch_binding (struct sway_switch_binding*) ;
 int list_add (TYPE_2__*,struct sway_switch_binding*) ;
 int sway_log (int ,char*,char const*,char const*,char const*) ;

__attribute__((used)) static struct cmd_results *switch_binding_add(
  struct sway_switch_binding *binding, const char *bindtype,
  const char *switchcombo, bool warn) {
 list_t *mode_bindings = config->current_mode->switch_bindings;

 bool overwritten = 0;
 for (int i = 0; i < mode_bindings->length; ++i) {
  struct sway_switch_binding *config_binding = mode_bindings->items[i];
  if (binding_switch_compare(binding, config_binding)) {
   sway_log(SWAY_INFO, "Overwriting binding '%s' to `%s` from `%s`",
     switchcombo, binding->command, config_binding->command);
   if (warn) {
    config_add_swaynag_warning("Overwriting binding"
      "'%s' to `%s` from `%s`",
      switchcombo, binding->command,
      config_binding->command);
   }
   free_switch_binding(config_binding);
   mode_bindings->items[i] = binding;
   overwritten = 1;
  }
 }

 if (!overwritten) {
  list_add(mode_bindings, binding);
  sway_log(SWAY_DEBUG, "%s - Bound %s to command `%s`",
    bindtype, switchcombo, binding->command);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
