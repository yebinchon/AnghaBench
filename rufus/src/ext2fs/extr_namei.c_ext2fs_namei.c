
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
 scalar_t__ open_namei (TYPE_1__*,int ,int ,char const*,int ,int ,int ,char*,int *) ;
 int strlen (char const*) ;

errcode_t ext2fs_namei(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
         const char *name, ext2_ino_t *inode)
{
 char *buf;
 errcode_t retval;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 retval = ext2fs_get_mem(fs->blocksize, &buf);
 if (retval)
  return retval;

 retval = open_namei(fs, root, cwd, name, strlen(name), 0, 0,
       buf, inode);

 ext2fs_free_mem(&buf);
 return retval;
}
