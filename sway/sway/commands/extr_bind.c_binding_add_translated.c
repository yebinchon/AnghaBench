
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_binding {int command; int input; } ;
typedef int list_t ;


 int SWAY_INFO ;
 struct sway_binding* binding_upsert (struct sway_binding*,int *) ;
 int free_sway_binding (struct sway_binding*) ;
 int sway_log (int ,char*,int ,int ,int ) ;

void binding_add_translated(struct sway_binding *binding,
  list_t *mode_bindings) {
 struct sway_binding *config_binding =
  binding_upsert(binding, mode_bindings);

 if (config_binding) {
  sway_log(SWAY_INFO, "Overwriting binding for device '%s' "
    "to `%s` from `%s`", binding->input,
    binding->command, config_binding->command);
  free_sway_binding(config_binding);
 }
}
