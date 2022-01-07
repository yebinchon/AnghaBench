
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 int free (int ) ;
 int list_free (TYPE_1__*) ;

void list_free_items_and_destroy(list_t *list) {
 if (!list) {
  return;
 }

 for (int i = 0; i < list->length; ++i) {
  free(list->items[i]);
 }
 list_free(list);
}
