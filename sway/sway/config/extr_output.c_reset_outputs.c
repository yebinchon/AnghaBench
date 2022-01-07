
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct output_config {int dummy; } ;
struct TYPE_4__ {TYPE_1__* output_configs; } ;
struct TYPE_3__ {struct output_config** items; } ;


 int apply_output_config_to_outputs (struct output_config*) ;
 TYPE_2__* config ;
 int list_seq_find (TYPE_1__*,int ,char*) ;
 int new_output_config (char*) ;
 int output_name_cmp ;
 struct output_config* store_output_config (int ) ;

void reset_outputs(void) {
 struct output_config *oc = ((void*)0);
 int i = list_seq_find(config->output_configs, output_name_cmp, "*");
 if (i >= 0) {
  oc = config->output_configs->items[i];
 } else {
  oc = store_output_config(new_output_config("*"));
 }
 apply_output_config_to_outputs(oc);
}
