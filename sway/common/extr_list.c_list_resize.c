
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int capacity; int items; } ;
typedef TYPE_1__ list_t ;


 int realloc (int ,int) ;

__attribute__((used)) static void list_resize(list_t *list) {
 if (list->length == list->capacity) {
  list->capacity *= 2;
  list->items = realloc(list->items, sizeof(void*) * list->capacity);
 }
}
