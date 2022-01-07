
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ io_channel ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
struct TYPE_3__ {int flags; scalar_t__ image_io; scalar_t__ io; } ;


 int EXT2_ET_NOT_IMAGE_FILE ;
 int EXT2_FLAG_IMAGE_FILE ;

errcode_t ext2fs_set_data_io(ext2_filsys fs, io_channel new_io)
{
 if ((fs->flags & EXT2_FLAG_IMAGE_FILE) == 0)
  return EXT2_ET_NOT_IMAGE_FILE;
 fs->io = new_io ? new_io : fs->image_io;
 return 0;
}
