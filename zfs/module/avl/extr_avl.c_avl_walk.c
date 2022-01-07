
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t avl_offset; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_10__ {struct TYPE_10__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;


 TYPE_2__* AVL_DATA2NODE (void*,size_t) ;
 void* AVL_NODE2DATA (TYPE_2__*,size_t) ;
 int AVL_XCHILD (TYPE_2__*) ;
 TYPE_2__* AVL_XPARENT (TYPE_2__*) ;

void *
avl_walk(avl_tree_t *tree, void *oldnode, int left)
{
 size_t off = tree->avl_offset;
 avl_node_t *node = AVL_DATA2NODE(oldnode, off);
 int right = 1 - left;
 int was_child;





 if (node == ((void*)0))
  return (((void*)0));







 if (node->avl_child[left] != ((void*)0)) {
  for (node = node->avl_child[left];
      node->avl_child[right] != ((void*)0);
      node = node->avl_child[right])
   ;



 } else {
  for (;;) {
   was_child = AVL_XCHILD(node);
   node = AVL_XPARENT(node);
   if (node == ((void*)0))
    return (((void*)0));
   if (was_child == right)
    break;
  }
 }

 return (AVL_NODE2DATA(node, off));
}
