
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_4__ {int * list_next; } ;
typedef TYPE_1__ list_node_t ;


 int ASSERT (int) ;
 TYPE_1__* list_d2l (int *,void*) ;
 int list_empty (int *) ;
 int list_remove_node (TYPE_1__*) ;

void
list_remove(list_t *list, void *object)
{
 list_node_t *lold = list_d2l(list, object);
 ASSERT(!list_empty(list));
 ASSERT(lold->list_next != ((void*)0));
 list_remove_node(lold);
}
