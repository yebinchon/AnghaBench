
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int tree_t ;
struct TYPE_12__ {int magic; } ;
typedef TYPE_1__ node_t ;


 int NODE_MAGIC ;
 int assert_ptr_eq (TYPE_1__*,TYPE_1__*,char*) ;
 int assert_u32_eq (int ,int ,char*) ;
 TYPE_1__* tree_nsearch (int *,TYPE_1__*) ;
 TYPE_1__* tree_psearch (int *,TYPE_1__*) ;
 TYPE_1__* tree_search (int *,TYPE_1__*) ;

__attribute__((used)) static node_t *
tree_iterate_cb(tree_t *tree, node_t *node, void *data) {
 unsigned *i = (unsigned *)data;
 node_t *search_node;

 assert_u32_eq(node->magic, NODE_MAGIC, "Bad magic");


 search_node = tree_search(tree, node);
 assert_ptr_eq(search_node, node,
     "tree_search() returned unexpected node");


 search_node = tree_nsearch(tree, node);
 assert_ptr_eq(search_node, node,
     "tree_nsearch() returned unexpected node");


 search_node = tree_psearch(tree, node);
 assert_ptr_eq(search_node, node,
     "tree_psearch() returned unexpected node");

 (*i)++;

 return ((void*)0);
}
