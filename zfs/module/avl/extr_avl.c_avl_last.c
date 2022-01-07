
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avl_offset; TYPE_2__* avl_root; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_6__ {struct TYPE_6__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;


 void* AVL_NODE2DATA (TYPE_2__*,size_t) ;

void *
avl_last(avl_tree_t *tree)
{
 avl_node_t *node;
 avl_node_t *prev = ((void*)0);
 size_t off = tree->avl_offset;

 for (node = tree->avl_root; node != ((void*)0); node = node->avl_child[1])
  prev = node;

 if (prev != ((void*)0))
  return (AVL_NODE2DATA(prev, off));
 return (((void*)0));
}
