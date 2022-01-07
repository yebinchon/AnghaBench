
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct output_config {int name; } ;
struct TYPE_4__ {TYPE_1__* output_configs; } ;
struct TYPE_3__ {int length; struct output_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_2__* config ;
 int merge_output_config (struct output_config*,struct output_config*) ;
 scalar_t__ strcmp (int ,int ) ;
 int sway_log (int ,char*,int ) ;

__attribute__((used)) static void merge_wildcard_on_all(struct output_config *wildcard) {
 for (int i = 0; i < config->output_configs->length; i++) {
  struct output_config *oc = config->output_configs->items[i];
  if (strcmp(wildcard->name, oc->name) != 0) {
   sway_log(SWAY_DEBUG, "Merging output * config on %s", oc->name);
   merge_output_config(oc, wildcard);
  }
 }
}
