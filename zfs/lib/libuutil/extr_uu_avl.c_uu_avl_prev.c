
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ua_tree; } ;
typedef TYPE_1__ uu_avl_t ;


 void* AVL_PREV (int *,void*) ;

void *
uu_avl_prev(uu_avl_t *ap, void *node)
{
 return (AVL_PREV(&ap->ua_tree, node));
}
