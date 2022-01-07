
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 TYPE_1__* create_list () ;
 TYPE_1__* get_basedirs () ;
 int list_cat (TYPE_1__*,TYPE_1__*) ;
 int list_free (TYPE_1__*) ;
 TYPE_1__* load_themes_in_dir (int ) ;
 int log_loaded_themes (TYPE_1__*) ;

void init_themes(list_t **themes, list_t **basedirs) {
 *basedirs = get_basedirs();

 *themes = create_list();
 for (int i = 0; i < (*basedirs)->length; ++i) {
  list_t *dir_themes = load_themes_in_dir((*basedirs)->items[i]);
  if (dir_themes == ((void*)0)) {
   continue;
  }
  list_cat(*themes, dir_themes);
  list_free(dir_themes);
 }

 log_loaded_themes(*themes);
}
