
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
typedef int rb_augment_f ;


 int ext2fs_rb_augment_path (struct rb_node*,int ,void*) ;

void ext2fs_rb_augment_insert(struct rb_node *node, rb_augment_f func, void *data)
{
 if (node->rb_left)
  node = node->rb_left;
 else if (node->rb_right)
  node = node->rb_right;

 ext2fs_rb_augment_path(node, func, data);
}
