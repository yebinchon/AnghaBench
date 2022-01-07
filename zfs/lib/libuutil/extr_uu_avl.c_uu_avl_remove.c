
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* uaw_next_result; scalar_t__ uaw_robust; struct TYPE_6__* uaw_next; } ;
typedef TYPE_1__ uu_avl_walk_t ;
struct TYPE_7__ {int ua_tree; TYPE_1__ ua_null_walk; int ua_index; scalar_t__ ua_debug; int * ua_pool; } ;
typedef TYPE_2__ uu_avl_t ;
typedef int uu_avl_pool_t ;


 int INDEX_NEXT (int ) ;
 uintptr_t* NODE_ARRAY (int *,void*) ;
 uintptr_t POOL_TO_MARKER (int *) ;
 int _avl_walk_advance (TYPE_1__*,TYPE_2__*) ;
 int avl_remove (int *,void*) ;
 int uu_panic (char*,void*,void*) ;

void
uu_avl_remove(uu_avl_t *ap, void *elem)
{
 uu_avl_walk_t *wp;
 uu_avl_pool_t *pp = ap->ua_pool;
 uintptr_t *na = NODE_ARRAY(pp, elem);

 if (ap->ua_debug) {



  ap->ua_index = INDEX_NEXT(ap->ua_index);
 }






 for (wp = ap->ua_null_walk.uaw_next; wp != &ap->ua_null_walk;
     wp = wp->uaw_next) {
  if (wp->uaw_robust) {
   if (elem == wp->uaw_next_result)
    (void) _avl_walk_advance(wp, ap);
  } else if (wp->uaw_next_result != ((void*)0)) {
   uu_panic("uu_avl_remove(%p, %p): active non-robust "
       "walker\n", (void *)ap, elem);
  }
 }

 avl_remove(&ap->ua_tree, elem);

 na[0] = POOL_TO_MARKER(pp);
 na[1] = 0;
}
