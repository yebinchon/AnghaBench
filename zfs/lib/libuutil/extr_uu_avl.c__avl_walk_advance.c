
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uaw_dir; void* uaw_next_result; } ;
typedef TYPE_1__ uu_avl_walk_t ;
struct TYPE_6__ {int ua_tree; } ;
typedef TYPE_2__ uu_avl_t ;
typedef int avl_tree_t ;


 void* AVL_NEXT (int *,void*) ;
 void* AVL_PREV (int *,void*) ;

__attribute__((used)) static void *
_avl_walk_advance(uu_avl_walk_t *wp, uu_avl_t *ap)
{
 void *np = wp->uaw_next_result;

 avl_tree_t *t = &ap->ua_tree;

 if (np == ((void*)0))
  return (((void*)0));

 wp->uaw_next_result = (wp->uaw_dir > 0)? AVL_NEXT(t, np) :
     AVL_PREV(t, np);

 return (np);
}
