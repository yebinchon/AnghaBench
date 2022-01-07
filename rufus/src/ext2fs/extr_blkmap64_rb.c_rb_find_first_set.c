
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_5__ {struct rb_node* rb_node; } ;
struct ext2fs_rb_private {TYPE_3__ root; } ;
struct bmap_rb_extent {scalar_t__ start; scalar_t__ count; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int errcode_t ;
typedef scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ private; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ ext2fs_rb_empty_root (TYPE_3__*) ;
 struct rb_node* ext2fs_rb_next (struct rb_node*) ;
 struct bmap_rb_extent* node_to_extent (struct rb_node*) ;

__attribute__((used)) static errcode_t rb_find_first_set(ext2fs_generic_bitmap_64 bitmap,
       __u64 start, __u64 end, __u64 *out)
{
 struct rb_node *parent = ((void*)0), **n;
 struct rb_node *node;
 struct ext2fs_rb_private *bp;
 struct bmap_rb_extent *ext;

 bp = (struct ext2fs_rb_private *) bitmap->private;
 n = &bp->root.rb_node;
 start -= bitmap->start;
 end -= bitmap->start;

 if (start > end)
  return EINVAL;

 if (ext2fs_rb_empty_root(&bp->root))
  return ENOENT;

 while (*n) {
  parent = *n;
  ext = node_to_extent(parent);
  if (start < ext->start) {
   n = &(*n)->rb_left;
  } else if (start >= (ext->start + ext->count)) {
   n = &(*n)->rb_right;
  } else {

   *out = start + bitmap->start;
   return 0;
  }
 }

 node = parent;
 ext = node_to_extent(node);
 if (ext->start < start) {
  node = ext2fs_rb_next(node);
  if (node == ((void*)0))
   return ENOENT;
  ext = node_to_extent(node);
 }
 if (ext->start <= end) {
  *out = ext->start + bitmap->start;
  return 0;
 }
 return ENOENT;
}
