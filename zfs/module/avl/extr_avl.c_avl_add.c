
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int avl_tree_t ;
typedef int avl_index_t ;


 int VERIFY (int ) ;
 int * avl_find (int *,void*,int *) ;
 int avl_insert (int *,void*,int ) ;

void
avl_add(avl_tree_t *tree, void *new_node)
{
 avl_index_t where = 0;

 VERIFY(avl_find(tree, new_node, &where) == ((void*)0));

 avl_insert(tree, new_node, where);
}
