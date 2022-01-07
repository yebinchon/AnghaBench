
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_config {scalar_t__ identifier; int * input_type; } ;
struct TYPE_4__ {TYPE_1__* input_configs; } ;
struct TYPE_3__ {int length; struct input_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_2__* config ;
 int merge_input_config (struct input_config*,struct input_config*) ;
 scalar_t__ strcmp (int *,scalar_t__) ;
 int sway_log (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void merge_type_on_existing(struct input_config *type_wildcard) {
 for (int i = 0; i < config->input_configs->length; i++) {
  struct input_config *ic = config->input_configs->items[i];
  if (ic->input_type == ((void*)0)) {
   continue;
  }

  if (strcmp(ic->input_type, type_wildcard->identifier + 5) == 0) {
   sway_log(SWAY_DEBUG, "Merging %s top of %s",
    type_wildcard->identifier,
    ic->identifier);
   merge_input_config(ic, type_wildcard);
  }
 }
}
