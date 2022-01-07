
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sway_binding {int input; } ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {int length; struct sway_binding** items; } ;
typedef TYPE_1__ list_t ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 scalar_t__ binding_key_compare (struct sway_binding*,struct sway_binding*) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 int free_sway_binding (struct sway_binding*) ;
 int list_del (TYPE_1__*,int) ;
 int sway_log (int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static struct cmd_results *binding_remove(struct sway_binding *binding,
  list_t *mode_bindings, const char *bindtype,
  const char *keycombo) {
 for (int i = 0; i < mode_bindings->length; ++i) {
  struct sway_binding *config_binding = mode_bindings->items[i];
  if (binding_key_compare(binding, config_binding)) {
   sway_log(SWAY_DEBUG, "%s - Unbound `%s` from device '%s'",
     bindtype, keycombo, binding->input);
   free_sway_binding(config_binding);
   free_sway_binding(binding);
   list_del(mode_bindings, i);
   return cmd_results_new(CMD_SUCCESS, ((void*)0));
  }
 }
 free_sway_binding(binding);
 return cmd_results_new(CMD_FAILURE, "Could not find binding `%s` "
   "for the given flags", keycombo);
}
