
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlate {int (* func ) (struct ext2_dir_entry*,int,int,char*,void*) ;void* real_private; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int errcode_t ;


 int ext2fs_dir_iterate2 (int ,int ,int,char*,int ,struct xlate*) ;
 int xlate_func ;

errcode_t ext2fs_dir_iterate(ext2_filsys fs,
        ext2_ino_t dir,
        int flags,
        char *block_buf,
        int (*func)(struct ext2_dir_entry *dirent,
      int offset,
      int blocksize,
      char *buf,
      void *priv_data),
        void *priv_data)
{
 struct xlate xl;

 xl.real_private = priv_data;
 xl.func = func;

 return ext2fs_dir_iterate2(fs, dir, flags, block_buf,
       xlate_func, &xl);
}
