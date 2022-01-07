
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_binding {char const* input; char const* command; } ;
struct cmd_results {int dummy; } ;
typedef int list_t ;


 int CMD_SUCCESS ;
 int SWAY_DEBUG ;
 int SWAY_INFO ;
 struct sway_binding* binding_upsert (struct sway_binding*,int *) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 int config_add_swaynag_warning (char*,char const*,char const*,char const*,char const*) ;
 int free_sway_binding (struct sway_binding*) ;
 int sway_log (int ,char*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static struct cmd_results *binding_add(struct sway_binding *binding,
  list_t *mode_bindings, const char *bindtype,
  const char *keycombo, bool warn) {
 struct sway_binding *config_binding = binding_upsert(binding, mode_bindings);

 if (config_binding) {
  sway_log(SWAY_INFO, "Overwriting binding '%s' for device '%s' "
    "to `%s` from `%s`", keycombo, binding->input,
    binding->command, config_binding->command);
  if (warn) {
   config_add_swaynag_warning("Overwriting binding"
     "'%s' for device '%s' to `%s` from `%s`",
     keycombo, binding->input, binding->command,
     config_binding->command);
  }
  free_sway_binding(config_binding);
 } else {
  sway_log(SWAY_DEBUG, "%s - Bound %s to command `%s` for device '%s'",
    bindtype, keycombo, binding->command, binding->input);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
