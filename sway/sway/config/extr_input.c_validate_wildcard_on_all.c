
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct input_config {int identifier; } ;
struct TYPE_6__ {TYPE_2__* input_type_configs; TYPE_1__* input_configs; } ;
struct TYPE_5__ {int length; struct input_config** items; } ;
struct TYPE_4__ {int length; struct input_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_3__* config ;
 scalar_t__ strcmp (int ,int ) ;
 int sway_log (int ,char*,int ) ;
 int validate_xkb_merge (struct input_config*,struct input_config*,char**) ;

__attribute__((used)) static bool validate_wildcard_on_all(struct input_config *wildcard,
  char **error) {
 for (int i = 0; i < config->input_configs->length; i++) {
  struct input_config *ic = config->input_configs->items[i];
  if (strcmp(wildcard->identifier, ic->identifier) != 0) {
   sway_log(SWAY_DEBUG, "Validating xkb merge of * on %s",
     ic->identifier);
   if (!validate_xkb_merge(ic, wildcard, error)) {
    return 0;
   }
  }
 }

 for (int i = 0; i < config->input_type_configs->length; i++) {
  struct input_config *ic = config->input_type_configs->items[i];
  sway_log(SWAY_DEBUG, "Validating xkb merge of * config on %s",
    ic->identifier);
  if (!validate_xkb_merge(ic, wildcard, error)) {
   return 0;
  }
 }

 return 1;
}
