
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* avl_compar ) (void*,void*) ;int avl_offset; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_9__ {struct TYPE_9__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;


 int ASSERT (int) ;
 int AVL_AFTER ;
 int AVL_BEFORE ;
 TYPE_2__* AVL_DATA2NODE (void*,int ) ;
 int AVL_MKINDEX (TYPE_2__*,int) ;
 void* AVL_NODE2DATA (TYPE_2__*,int ) ;
 int avl_insert (TYPE_1__*,void*,int ) ;
 int stub1 (void*,void*) ;
 int stub2 (void*,void*) ;
 int stub3 (void*,void*) ;

void
avl_insert_here(
 avl_tree_t *tree,
 void *new_data,
 void *here,
 int direction)
{
 avl_node_t *node;
 int child = direction;




 ASSERT(tree != ((void*)0));
 ASSERT(new_data != ((void*)0));
 ASSERT(here != ((void*)0));
 ASSERT(direction == AVL_BEFORE || direction == AVL_AFTER);





 node = AVL_DATA2NODE(here, tree->avl_offset);
 if (node->avl_child[child] != ((void*)0)) {
  node = node->avl_child[child];
  child = 1 - child;
  while (node->avl_child[child] != ((void*)0)) {







   node = node->avl_child[child];
  }







 }
 ASSERT(node->avl_child[child] == ((void*)0));

 avl_insert(tree, new_data, AVL_MKINDEX(node, child));
}
