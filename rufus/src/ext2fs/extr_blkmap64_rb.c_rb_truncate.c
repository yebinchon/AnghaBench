
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
struct bmap_rb_extent {int start; int count; } ;
typedef int __u64 ;


 int ext2fs_free_mem (struct bmap_rb_extent**) ;
 int ext2fs_rb_erase (struct rb_node*,struct rb_root*) ;
 struct rb_node* ext2fs_rb_last (struct rb_root*) ;
 struct bmap_rb_extent* node_to_extent (struct rb_node*) ;

__attribute__((used)) static void rb_truncate(__u64 new_max, struct rb_root *root)
{
 struct bmap_rb_extent *ext;
 struct rb_node *node;

 node = ext2fs_rb_last(root);
 while (node) {
  ext = node_to_extent(node);

  if ((ext->start + ext->count - 1) <= new_max)
   break;
  else if (ext->start > new_max) {
   ext2fs_rb_erase(node, root);
   ext2fs_free_mem(&ext);
   node = ext2fs_rb_last(root);
   continue;
  } else
   ext->count = new_max - ext->start + 1;
 }
}
