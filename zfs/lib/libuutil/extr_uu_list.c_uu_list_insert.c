
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * uln_prev; } ;
struct TYPE_9__ {scalar_t__ ul_debug; TYPE_2__ ul_null_node; } ;
typedef TYPE_1__ uu_list_t ;
typedef TYPE_2__ uu_list_node_impl_t ;
typedef scalar_t__ uu_list_index_t ;


 int ELEM_TO_NODE (TYPE_1__*,void*) ;
 scalar_t__ INDEX_CHECK (scalar_t__) ;
 TYPE_2__* INDEX_TO_NODE (scalar_t__) ;
 int INDEX_VALID (TYPE_1__*,scalar_t__) ;
 int list_insert (TYPE_1__*,int ,int *,TYPE_2__*) ;
 int uu_panic (char*,void*,void*,void*,...) ;

void
uu_list_insert(uu_list_t *lp, void *elem, uu_list_index_t idx)
{
 uu_list_node_impl_t *np;

 np = INDEX_TO_NODE(idx);
 if (np == ((void*)0))
  np = &lp->ul_null_node;

 if (lp->ul_debug) {
  if (!INDEX_VALID(lp, idx))
   uu_panic("uu_list_insert(%p, %p, %p): %s\n",
       (void *)lp, elem, (void *)idx,
       INDEX_CHECK(idx)? "outdated index" :
       "invalid index");
  if (np->uln_prev == ((void*)0))
   uu_panic("uu_list_insert(%p, %p, %p): out-of-date "
       "index\n", (void *)lp, elem, (void *)idx);
 }

 list_insert(lp, ELEM_TO_NODE(lp, elem), np->uln_prev, np);
}
