
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ol_list; } ;
typedef TYPE_1__ objlist_t ;
typedef TYPE_1__ objlist_node_t ;


 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 TYPE_1__* list_remove_head (int *) ;

void
objlist_destroy(objlist_t *list)
{
 for (objlist_node_t *n = list_remove_head(&list->ol_list);
     n != ((void*)0); n = list_remove_head(&list->ol_list)) {
  kmem_free(n, sizeof (*n));
 }
 list_destroy(&list->ol_list);
 kmem_free(list, sizeof (*list));
}
