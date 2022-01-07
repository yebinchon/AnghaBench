
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
typedef int rb_augment_f ;


 int ext2fs_rb_augment_path (struct rb_node*,int ,void*) ;

void ext2fs_rb_augment_erase_end(struct rb_node *node, rb_augment_f func, void *data)
{
 if (node)
  ext2fs_rb_augment_path(node, func, data);
}
