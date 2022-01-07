
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* items; } ;
typedef TYPE_1__ list_t ;


 int free (TYPE_1__*) ;

void list_free(list_t *list) {
 if (list == ((void*)0)) {
  return;
 }
 free(list->items);
 free(list);
}
