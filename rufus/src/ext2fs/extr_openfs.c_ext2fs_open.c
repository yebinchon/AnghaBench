
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int io_manager ;
typedef int ext2_filsys ;
typedef int errcode_t ;


 int ext2fs_open2 (char const*,int ,int,int,unsigned int,int ,int *) ;

errcode_t ext2fs_open(const char *name, int flags, int superblock,
        unsigned int block_size, io_manager manager,
        ext2_filsys *ret_fs)
{
 return ext2fs_open2(name, 0, flags, superblock, block_size,
       manager, ret_fs);
}
