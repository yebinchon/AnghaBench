
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_output {TYPE_3__* wlr_output; } ;
struct output_config {char* name; int dpms_state; int background_option; int background; int transform; int scale; int y; int x; int refresh_rate; int height; int width; int enabled; } ;
struct TYPE_7__ {scalar_t__ reloading; TYPE_1__* output_configs; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {struct output_config** items; } ;


 int SWAY_DEBUG ;
 TYPE_4__* config ;
 int default_output_config (struct output_config*,TYPE_3__*) ;
 int free (char*) ;
 int free_output_config (struct output_config*) ;
 int list_add (TYPE_1__*,struct output_config*) ;
 int list_seq_find (TYPE_1__*,int ,char const*) ;
 char* malloc (size_t) ;
 int merge_output_config (struct output_config*,struct output_config*) ;
 struct output_config* new_output_config (char*) ;
 int output_name_cmp ;
 int snprintf (char*,size_t,char*,char*,char const*) ;
 void* strdup (char const*) ;
 int sway_log (int ,char*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct output_config *get_output_config(char *identifier,
  struct sway_output *sway_output) {
 const char *name = sway_output->wlr_output->name;

 struct output_config *oc_id_on_name = ((void*)0);
 struct output_config *oc_name = ((void*)0);
 struct output_config *oc_id = ((void*)0);

 size_t length = snprintf(((void*)0), 0, "%s on %s", identifier, name) + 1;
 char *id_on_name = malloc(length);
 snprintf(id_on_name, length, "%s on %s", identifier, name);
 int i = list_seq_find(config->output_configs, output_name_cmp, id_on_name);
 if (i >= 0) {
  oc_id_on_name = config->output_configs->items[i];
 } else {
  i = list_seq_find(config->output_configs, output_name_cmp, name);
  if (i >= 0) {
   oc_name = config->output_configs->items[i];
  }

  i = list_seq_find(config->output_configs, output_name_cmp, identifier);
  if (i >= 0) {
   oc_id = config->output_configs->items[i];
  }
 }

 struct output_config *result = new_output_config("temp");
 if (config->reloading) {
  default_output_config(result, sway_output->wlr_output);
 }
 if (oc_id_on_name) {

  free(result->name);
  result->name = strdup(id_on_name);
  merge_output_config(result, oc_id_on_name);
 } else if (oc_name && oc_id) {




  struct output_config *temp = new_output_config(id_on_name);
  merge_output_config(temp, oc_name);
  merge_output_config(temp, oc_id);
  list_add(config->output_configs, temp);

  free(result->name);
  result->name = strdup(id_on_name);
  merge_output_config(result, temp);

  sway_log(SWAY_DEBUG, "Generated output config \"%s\" (enabled: %d)"
   " (%dx%d@%fHz position %d,%d scale %f transform %d) (bg %s %s)"
   " (dpms %d)", result->name, result->enabled, result->width,
   result->height, result->refresh_rate, result->x, result->y,
   result->scale, result->transform, result->background,
   result->background_option, result->dpms_state);
 } else if (oc_name) {

  free(result->name);
  result->name = strdup(name);
  merge_output_config(result, oc_name);
 } else if (oc_id) {

  free(result->name);
  result->name = strdup(identifier);
  merge_output_config(result, oc_id);
 } else {
  i = list_seq_find(config->output_configs, output_name_cmp, "*");
  if (i >= 0) {

   free(result->name);
   result->name = strdup("*");
   merge_output_config(result, config->output_configs->items[i]);
  } else if (!config->reloading) {



   free_output_config(result);
   result = ((void*)0);
  }
 }

 free(id_on_name);
 return result;
}
