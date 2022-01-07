
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
struct TYPE_5__ {int blocksize; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_mem (int ,char**) ;
 scalar_t__ follow_link (TYPE_1__*,int ,int ,int ,int ,char*,int *) ;

errcode_t ext2fs_follow_link(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
   ext2_ino_t inode, ext2_ino_t *res_inode)
{
 char *buf;
 errcode_t retval;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 retval = ext2fs_get_mem(fs->blocksize, &buf);
 if (retval)
  return retval;

 retval = follow_link(fs, root, cwd, inode, 0, buf, res_inode);

 ext2fs_free_mem(&buf);
 return retval;
}
