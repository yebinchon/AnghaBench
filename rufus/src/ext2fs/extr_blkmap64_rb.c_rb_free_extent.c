
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_rb_private {struct bmap_rb_extent* rcursor_next; struct bmap_rb_extent* rcursor; struct bmap_rb_extent* wcursor; } ;
struct bmap_rb_extent {int dummy; } ;


 int ext2fs_free_mem (struct bmap_rb_extent**) ;

__attribute__((used)) inline
static void rb_free_extent(struct ext2fs_rb_private *bp,
      struct bmap_rb_extent *ext)
{
 if (bp->wcursor == ext)
  bp->wcursor = ((void*)0);
 if (bp->rcursor == ext)
  bp->rcursor = ((void*)0);
 if (bp->rcursor_next == ext)
  bp->rcursor_next = ((void*)0);
 ext2fs_free_mem(&ext);
}
