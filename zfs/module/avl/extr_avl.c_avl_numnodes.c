
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_4__ {int avl_numnodes; } ;
typedef TYPE_1__ avl_tree_t ;


 int ASSERT (TYPE_1__*) ;

ulong_t
avl_numnodes(avl_tree_t *tree)
{
 ASSERT(tree);
 return (tree->avl_numnodes);
}
