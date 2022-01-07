
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap ;
typedef scalar_t__ errcode_t ;
struct TYPE_3__ {scalar_t__ magic; } ;


 scalar_t__ EXT2_ET_MAGIC_BLOCK_BITMAP ;
 scalar_t__ EXT2_ET_MAGIC_GENERIC_BITMAP ;
 scalar_t__ EXT2_ET_MAGIC_INODE_BITMAP ;

__attribute__((used)) static errcode_t check_magic(ext2fs_generic_bitmap bitmap)
{
 if (!bitmap || !((bitmap->magic == EXT2_ET_MAGIC_GENERIC_BITMAP) ||
    (bitmap->magic == EXT2_ET_MAGIC_INODE_BITMAP) ||
    (bitmap->magic == EXT2_ET_MAGIC_BLOCK_BITMAP)))
  return EXT2_ET_MAGIC_GENERIC_BITMAP;
 return 0;
}
