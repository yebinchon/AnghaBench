
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bar_config {int id; } ;
struct TYPE_8__ {int length; int * items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_9__ {TYPE_1__* bars; int current_config_path; } ;
struct TYPE_7__ {int length; struct bar_config** items; } ;


 int SWAY_ERROR ;
 int arrange_root () ;
 TYPE_6__* config ;
 int config_update_font_height (int) ;
 TYPE_2__* create_list () ;
 int ipc_event_barconfig_update (struct bar_config*) ;
 int ipc_event_workspace (int *,int *,char*) ;
 int list_add (TYPE_2__*,int ) ;
 int list_free_items_and_destroy (TYPE_2__*) ;
 int load_main_config (int ,int,int) ;
 int load_swaybars () ;
 int rebuild_textures_iterator ;
 int root_for_each_container (int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int strdup (int ) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static void do_reload(void *data) {

 list_t *bar_ids = create_list();
 for (int i = 0; i < config->bars->length; ++i) {
  struct bar_config *bar = config->bars->items[i];
  list_add(bar_ids, strdup(bar->id));
 }

 if (!load_main_config(config->current_config_path, 1, 0)) {
  sway_log(SWAY_ERROR, "Error(s) reloading config");
  list_free_items_and_destroy(bar_ids);
  return;
 }

 ipc_event_workspace(((void*)0), ((void*)0), "reload");

 load_swaybars();

 for (int i = 0; i < config->bars->length; ++i) {
  struct bar_config *bar = config->bars->items[i];
  for (int j = 0; j < bar_ids->length; ++j) {
   if (strcmp(bar->id, bar_ids->items[j]) == 0) {
    ipc_event_barconfig_update(bar);
    break;
   }
  }
 }
 list_free_items_and_destroy(bar_ids);

 config_update_font_height(1);
 root_for_each_container(rebuild_textures_iterator, ((void*)0));

 arrange_root();
}
