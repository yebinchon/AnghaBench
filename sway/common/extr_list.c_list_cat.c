
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 int list_add (TYPE_1__*,int ) ;

void list_cat(list_t *list, list_t *source) {
 for (int i = 0; i < source->length; ++i) {
  list_add(list, source->items[i]);
 }
}
