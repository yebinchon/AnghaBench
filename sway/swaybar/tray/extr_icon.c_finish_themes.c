
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 int destroy_theme (int ) ;
 int list_free (TYPE_1__*) ;
 int list_free_items_and_destroy (TYPE_1__*) ;

void finish_themes(list_t *themes, list_t *basedirs) {
 for (int i = 0; i < themes->length; ++i) {
  destroy_theme(themes->items[i]);
 }
 list_free(themes);
 list_free_items_and_destroy(basedirs);
}
