
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * uln_prev; } ;
struct TYPE_9__ {scalar_t__ ul_debug; scalar_t__ ul_sorted; TYPE_2__ ul_null_node; } ;
typedef TYPE_1__ uu_list_t ;
typedef TYPE_2__ uu_list_node_impl_t ;


 TYPE_2__* ELEM_TO_NODE (TYPE_1__*,void*) ;
 int UU_ERROR_NOT_SUPPORTED ;
 int list_insert (TYPE_1__*,TYPE_2__*,int *,TYPE_2__*) ;
 int uu_panic (char*,void*,...) ;
 int uu_set_error (int ) ;

int
uu_list_insert_before(uu_list_t *lp, void *target, void *elem)
{
 uu_list_node_impl_t *np = ELEM_TO_NODE(lp, target);

 if (target == ((void*)0))
  np = &lp->ul_null_node;

 if (lp->ul_debug) {
  if (np->uln_prev == ((void*)0))
   uu_panic("uu_list_insert_before(%p, %p, %p): %p is "
       "not currently on a list\n",
       (void *)lp, target, elem, target);
 }
 if (lp->ul_sorted) {
  if (lp->ul_debug)
   uu_panic("uu_list_insert_before(%p, ...): list is "
       "UU_LIST_SORTED\n", (void *)lp);
  uu_set_error(UU_ERROR_NOT_SUPPORTED);
  return (-1);
 }

 list_insert(lp, ELEM_TO_NODE(lp, elem), np->uln_prev, np);
 return (0);
}
