
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2fs_inode_bitmap ;
typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
struct TYPE_3__ {struct TYPE_3__* bitmap; struct TYPE_3__* description; scalar_t__ magic; } ;


 scalar_t__ check_magic (int ) ;
 int ext2fs_free_mem (TYPE_1__**) ;

void ext2fs_free_generic_bitmap(ext2fs_inode_bitmap gen_bitmap)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

 if (check_magic(gen_bitmap))
  return;

 bitmap->magic = 0;
 if (bitmap->description) {
  ext2fs_free_mem(&bitmap->description);
  bitmap->description = 0;
 }
 if (bitmap->bitmap) {
  ext2fs_free_mem(&bitmap->bitmap);
  bitmap->bitmap = 0;
 }
 ext2fs_free_mem(&bitmap);
}
