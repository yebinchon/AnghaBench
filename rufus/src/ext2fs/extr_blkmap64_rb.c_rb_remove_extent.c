
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct ext2fs_rb_private {struct rb_root root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; struct rb_node node; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ ext2fs_rb_empty_root (struct rb_root*) ;
 int ext2fs_rb_erase (struct rb_node*,struct rb_root*) ;
 struct rb_node* ext2fs_rb_next (struct rb_node*) ;
 struct bmap_rb_extent* node_to_extent (struct rb_node*) ;
 int rb_free_extent (struct ext2fs_rb_private*,struct bmap_rb_extent*) ;
 int rb_insert_extent (scalar_t__,scalar_t__,struct ext2fs_rb_private*) ;

__attribute__((used)) static int rb_remove_extent(__u64 start, __u64 count,
       struct ext2fs_rb_private *bp)
{
 struct rb_root *root = &bp->root;
 struct rb_node *parent = ((void*)0), **n = &root->rb_node;
 struct rb_node *node;
 struct bmap_rb_extent *ext;
 __u64 new_start, new_count;
 int retval = 0;

 if (ext2fs_rb_empty_root(root))
  return 0;

 while (*n) {
  parent = *n;
  ext = node_to_extent(parent);
  if (start < ext->start) {
   n = &(*n)->rb_left;
   continue;
  } else if (start >= (ext->start + ext->count)) {
   n = &(*n)->rb_right;
   continue;
  }

  if ((start > ext->start) &&
      (start + count) < (ext->start + ext->count)) {

   new_start = start + count;
   new_count = (ext->start + ext->count) - new_start;

   ext->count = start - ext->start;

   rb_insert_extent(new_start, new_count, bp);
   return 1;
  }

  if ((start + count) >= (ext->start + ext->count)) {
   ext->count = start - ext->start;
   retval = 1;
  }

  if (0 == ext->count) {
   parent = ext2fs_rb_next(&ext->node);
   ext2fs_rb_erase(&ext->node, root);
   rb_free_extent(bp, ext);
   break;
  }

  if (start == ext->start) {
   ext->start += count;
   ext->count -= count;
   return 1;
  }
 }


 for (; parent != ((void*)0); parent = node) {
  node = ext2fs_rb_next(parent);
  ext = node_to_extent(parent);
  if ((ext->start + ext->count) <= start)
   continue;


  if ((start + count) < ext->start)
   break;


  if ((start + count) >= (ext->start + ext->count)) {
   ext2fs_rb_erase(parent, root);
   rb_free_extent(bp, ext);
   retval = 1;
   continue;
  } else {

   ext->count -= ((start + count) - ext->start);
   ext->start = start + count;
   retval = 1;
   break;
  }
 }

 return retval;
}
