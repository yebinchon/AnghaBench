
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* ulw_next_result; scalar_t__ ulw_robust; struct TYPE_12__* ulw_next; } ;
typedef TYPE_2__ uu_list_walk_t ;
struct TYPE_13__ {int ul_pool; int ul_numnodes; TYPE_2__ ul_null_walk; int ul_index; scalar_t__ ul_debug; } ;
typedef TYPE_3__ uu_list_t ;
struct TYPE_14__ {TYPE_1__* uln_prev; TYPE_8__* uln_next; } ;
typedef TYPE_4__ uu_list_node_impl_t ;
struct TYPE_15__ {TYPE_1__* uln_prev; } ;
struct TYPE_11__ {TYPE_8__* uln_next; } ;


 TYPE_4__* ELEM_TO_NODE (TYPE_3__*,void*) ;
 int INDEX_NEXT (int ) ;
 TYPE_8__* POOL_TO_MARKER (int ) ;
 int list_walk_advance (TYPE_2__*,TYPE_3__*) ;
 int uu_panic (char*,void*,void*) ;

void
uu_list_remove(uu_list_t *lp, void *elem)
{
 uu_list_node_impl_t *np = ELEM_TO_NODE(lp, elem);
 uu_list_walk_t *wp;

 if (lp->ul_debug) {
  if (np->uln_prev == ((void*)0))
   uu_panic("uu_list_remove(%p, %p): elem not on list\n",
       (void *)lp, elem);



  lp->ul_index = INDEX_NEXT(lp->ul_index);
 }





 for (wp = lp->ul_null_walk.ulw_next; wp != &lp->ul_null_walk;
     wp = wp->ulw_next) {
  if (wp->ulw_robust) {
   if (np == wp->ulw_next_result)
    (void) list_walk_advance(wp, lp);
  } else if (wp->ulw_next_result != ((void*)0)) {
   uu_panic("uu_list_remove(%p, %p): active non-robust "
       "walker\n", (void *)lp, elem);
  }
 }

 np->uln_next->uln_prev = np->uln_prev;
 np->uln_prev->uln_next = np->uln_next;

 lp->ul_numnodes--;

 np->uln_next = POOL_TO_MARKER(lp->ul_pool);
 np->uln_prev = ((void*)0);
}
