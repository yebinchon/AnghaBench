
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
struct TYPE_4__ {scalar_t__ block_map; scalar_t__ inode_map; } ;


 int read_bitmaps (TYPE_1__*,int,int) ;

errcode_t ext2fs_read_bitmaps(ext2_filsys fs)
{
 if (fs->inode_map && fs->block_map)
  return 0;

 return read_bitmaps(fs, !fs->inode_map, !fs->block_map);
}
