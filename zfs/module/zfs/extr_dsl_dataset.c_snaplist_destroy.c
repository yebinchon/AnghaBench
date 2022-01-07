
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct promotenode {int ds; } ;
struct TYPE_6__ {int list_head; } ;
typedef TYPE_1__ list_t ;


 int dsl_dataset_rele (int ,void*) ;
 int kmem_free (struct promotenode*,int) ;
 int list_destroy (TYPE_1__*) ;
 int list_link_active (int *) ;
 int list_remove (TYPE_1__*,struct promotenode*) ;
 struct promotenode* list_tail (TYPE_1__*) ;

__attribute__((used)) static void
snaplist_destroy(list_t *l, void *tag)
{
 struct promotenode *snap;

 if (l == ((void*)0) || !list_link_active(&l->list_head))
  return;

 while ((snap = list_tail(l)) != ((void*)0)) {
  list_remove(l, snap);
  dsl_dataset_rele(snap->ds, tag);
  kmem_free(snap, sizeof (*snap));
 }
 list_destroy(l);
}
