
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; void* items; scalar_t__ length; } ;
typedef TYPE_1__ list_t ;


 void* malloc (int) ;

list_t *create_list(void) {
 list_t *list = malloc(sizeof(list_t));
 if (!list) {
  return ((void*)0);
 }
 list->capacity = 10;
 list->length = 0;
 list->items = malloc(sizeof(void*) * list->capacity);
 return list;
}
