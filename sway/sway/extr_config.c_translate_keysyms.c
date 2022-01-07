
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xkb_rule_names {int member_0; } ;
struct sway_mode {int * keycode_bindings; int * keysym_bindings; } ;
struct input_config {int identifier; } ;
typedef int list_t ;
struct TYPE_4__ {TYPE_1__* modes; int keysym_translation_state; } ;
struct TYPE_3__ {int length; struct sway_mode** items; } ;


 int SWAY_DEBUG ;
 TYPE_2__* config ;
 int * create_list () ;
 int input_config_fill_rule_names (struct input_config*,struct xkb_rule_names*) ;
 int keysym_translation_state_create (struct xkb_rule_names) ;
 int keysym_translation_state_destroy (int ) ;
 int list_free (int *) ;
 int sway_log (int ,char*,int ) ;
 int translate_binding_list (int *,int *,int *) ;

void translate_keysyms(struct input_config *input_config) {
 keysym_translation_state_destroy(config->keysym_translation_state);

 struct xkb_rule_names rules = {0};
 input_config_fill_rule_names(input_config, &rules);
 config->keysym_translation_state =
  keysym_translation_state_create(rules);

 for (int i = 0; i < config->modes->length; ++i) {
  struct sway_mode *mode = config->modes->items[i];

  list_t *bindsyms = create_list();
  list_t *bindcodes = create_list();

  translate_binding_list(mode->keysym_bindings, bindsyms, bindcodes);
  translate_binding_list(mode->keycode_bindings, bindsyms, bindcodes);

  list_free(mode->keysym_bindings);
  list_free(mode->keycode_bindings);

  mode->keysym_bindings = bindsyms;
  mode->keycode_bindings = bindcodes;
 }

 sway_log(SWAY_DEBUG, "Translated keysyms using config for device '%s'",
   input_config->identifier);
}
