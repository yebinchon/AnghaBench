
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 struct rb_node* ext2fs_rb_parent (struct rb_node*) ;

struct rb_node *ext2fs_rb_next(struct rb_node *node)
{
 struct rb_node *parent;

 if (ext2fs_rb_parent(node) == node)
  return ((void*)0);



 if (node->rb_right) {
  node = node->rb_right;
  while (node->rb_left)
   node=node->rb_left;
  return (struct rb_node *)node;
 }







 while ((parent = ext2fs_rb_parent(node)) && node == parent->rb_right)
  node = parent;

 return parent;
}
