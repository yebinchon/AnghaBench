
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct output_config {char* name; int dpms_state; int background_option; int background; int transform; int subpixel; int scale; int y; int x; int refresh_rate; int height; int width; int enabled; } ;
struct TYPE_5__ {TYPE_1__* output_configs; } ;
struct TYPE_4__ {struct output_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_3__* config ;
 int free_output_config (struct output_config*) ;
 int list_add (TYPE_1__*,struct output_config*) ;
 int list_seq_find (TYPE_1__*,int ,char*) ;
 int merge_id_on_name (struct output_config*) ;
 int merge_output_config (struct output_config*,struct output_config*) ;
 int merge_wildcard_on_all (struct output_config*) ;
 struct output_config* new_output_config (char*) ;
 int output_name_cmp ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_log (int ,char*,...) ;
 int sway_wl_output_subpixel_to_string (int ) ;

struct output_config *store_output_config(struct output_config *oc) {
 bool wildcard = strcmp(oc->name, "*") == 0;
 if (wildcard) {
  merge_wildcard_on_all(oc);
 } else {
  merge_id_on_name(oc);
 }

 int i = list_seq_find(config->output_configs, output_name_cmp, oc->name);
 if (i >= 0) {
  sway_log(SWAY_DEBUG, "Merging on top of existing output config");
  struct output_config *current = config->output_configs->items[i];
  merge_output_config(current, oc);
  free_output_config(oc);
  oc = current;
 } else if (!wildcard) {
  sway_log(SWAY_DEBUG, "Adding non-wildcard output config");
  i = list_seq_find(config->output_configs, output_name_cmp, "*");
  if (i >= 0) {
   sway_log(SWAY_DEBUG, "Merging on top of output * config");
   struct output_config *current = new_output_config(oc->name);
   merge_output_config(current, config->output_configs->items[i]);
   merge_output_config(current, oc);
   free_output_config(oc);
   oc = current;
  }
  list_add(config->output_configs, oc);
 } else {

  sway_log(SWAY_DEBUG, "Adding output * config");
  list_add(config->output_configs, oc);
 }

 sway_log(SWAY_DEBUG, "Config stored for output %s (enabled: %d) (%dx%d@%fHz "
  "position %d,%d scale %f subpixel %s transform %d) (bg %s %s) (dpms %d)",
  oc->name, oc->enabled, oc->width, oc->height, oc->refresh_rate,
  oc->x, oc->y, oc->scale, sway_wl_output_subpixel_to_string(oc->subpixel),
  oc->transform, oc->background, oc->background_option, oc->dpms_state);

 return oc;
}
