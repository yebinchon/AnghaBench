
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ avl_numnodes; } ;
typedef TYPE_1__ avl_tree_t ;


 int ASSERT (TYPE_1__*) ;

boolean_t
avl_is_empty(avl_tree_t *tree)
{
 ASSERT(tree);
 return (tree->avl_numnodes == 0);
}
