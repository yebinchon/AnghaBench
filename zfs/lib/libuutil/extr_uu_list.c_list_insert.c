
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ul_numnodes; int ul_index; int ul_pool; scalar_t__ ul_debug; } ;
typedef TYPE_1__ uu_list_t ;
struct TYPE_11__ {struct TYPE_11__* uln_next; struct TYPE_11__* uln_prev; } ;
typedef TYPE_2__ uu_list_node_impl_t ;


 int INDEX_NEXT (int ) ;
 void* NODE_TO_ELEM (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* POOL_TO_MARKER (int ) ;
 int uu_panic (char*,void*,void*,void*) ;

__attribute__((used)) static void
list_insert(uu_list_t *lp, uu_list_node_impl_t *np, uu_list_node_impl_t *prev,
    uu_list_node_impl_t *next)
{
 if (lp->ul_debug) {
  if (next->uln_prev != prev || prev->uln_next != next)
   uu_panic("insert(%p): internal error: %p and %p not "
       "neighbors\n", (void *)lp, (void *)next,
       (void *)prev);

  if (np->uln_next != POOL_TO_MARKER(lp->ul_pool) ||
      np->uln_prev != ((void*)0)) {
   uu_panic("insert(%p): elem %p node %p corrupt, "
       "not initialized, or already in a list.\n",
       (void *)lp, NODE_TO_ELEM(lp, np), (void *)np);
  }



  lp->ul_index = INDEX_NEXT(lp->ul_index);
 }
 np->uln_next = next;
 np->uln_prev = prev;
 next->uln_prev = np;
 prev->uln_next = np;

 lp->ul_numnodes++;
}
