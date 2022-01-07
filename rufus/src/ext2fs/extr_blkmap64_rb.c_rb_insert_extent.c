
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct ext2fs_rb_private {struct bmap_rb_extent* wcursor; int mark_hit; int * rcursor_next; struct rb_root root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; struct rb_node node; } ;
typedef scalar_t__ __u64 ;


 int ext2fs_rb_erase (struct rb_node*,struct rb_root*) ;
 int ext2fs_rb_insert_color (struct rb_node*,struct rb_root*) ;
 int ext2fs_rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;
 struct rb_node* ext2fs_rb_next (struct rb_node*) ;
 struct rb_node* ext2fs_rb_prev (struct rb_node*) ;
 struct bmap_rb_extent* node_to_extent (struct rb_node*) ;
 int rb_free_extent (struct ext2fs_rb_private*,struct bmap_rb_extent*) ;
 int rb_get_new_extent (struct bmap_rb_extent**,scalar_t__,scalar_t__) ;

__attribute__((used)) static int rb_insert_extent(__u64 start, __u64 count,
       struct ext2fs_rb_private *bp)
{
 struct rb_root *root = &bp->root;
 struct rb_node *parent = ((void*)0), **n = &root->rb_node;
 struct rb_node *new_node, *node, *next;
 struct bmap_rb_extent *new_ext;
 struct bmap_rb_extent *ext;
 int retval = 0;

 if (count == 0)
  return 0;

 bp->rcursor_next = ((void*)0);
 ext = bp->wcursor;
 if (ext) {
  if (start >= ext->start &&
      start <= (ext->start + ext->count)) {



   goto got_extent;
  }
 }

 while (*n) {
  parent = *n;
  ext = node_to_extent(parent);

  if (start < ext->start) {
   n = &(*n)->rb_left;
  } else if (start > (ext->start + ext->count)) {
   n = &(*n)->rb_right;
  } else {
got_extent:
   if ((start + count) <= (ext->start + ext->count))
    return 1;

   if ((ext->start + ext->count) == start)
    retval = 0;
   else
    retval = 1;

   count += (start - ext->start);
   start = ext->start;
   new_ext = ext;
   new_node = &ext->node;

   goto skip_insert;
  }
 }

 rb_get_new_extent(&new_ext, start, count);

 new_node = &new_ext->node;
 ext2fs_rb_link_node(new_node, parent, n);
 ext2fs_rb_insert_color(new_node, root);
 bp->wcursor = new_ext;

 node = ext2fs_rb_prev(new_node);
 if (node) {
  ext = node_to_extent(node);
  if ((ext->start + ext->count) == start) {
   start = ext->start;
   count += ext->count;
   ext2fs_rb_erase(node, root);
   rb_free_extent(bp, ext);
  }
 }

skip_insert:

 for (node = ext2fs_rb_next(new_node); node != ((void*)0); node = next) {
  next = ext2fs_rb_next(node);
  ext = node_to_extent(node);

  if ((ext->start + ext->count) <= start)
   continue;


  if ((start + count) < ext->start)
   break;


  if ((start + count) >= (ext->start + ext->count)) {
   ext2fs_rb_erase(node, root);
   rb_free_extent(bp, ext);
   continue;
  } else {

   count += ((ext->start + ext->count) -
      (start + count));
   ext2fs_rb_erase(node, root);
   rb_free_extent(bp, ext);
   break;
  }
 }

 new_ext->start = start;
 new_ext->count = count;

 return retval;
}
