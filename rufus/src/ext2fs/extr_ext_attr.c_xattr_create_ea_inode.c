
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct ext2_inode {int i_mode; int i_links_count; scalar_t__ i_size; int i_flags; } ;
typedef int inode ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int ext2_file_t ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;
struct TYPE_8__ {int csum_seed; int super; } ;


 int EXT2_FILE_WRITE ;
 int EXT4_EA_INODE_FL ;
 int EXT4_EXTENTS_FL ;
 int LINUX_S_IFREG ;
 int ext2fs_crc32c_le (int ,void const*,size_t) ;
 int ext2fs_file_close (int ) ;
 scalar_t__ ext2fs_file_open (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ ext2fs_file_write (int ,void const*,size_t,int *) ;
 scalar_t__ ext2fs_has_feature_extents (int ) ;
 int ext2fs_inode_alloc_stats2 (TYPE_1__*,int ,int,int ) ;
 scalar_t__ ext2fs_new_inode (TYPE_1__*,int ,int ,int ,int *) ;
 int ext2fs_set_ea_inode_hash (struct ext2_inode*,int ) ;
 int ext2fs_set_ea_inode_ref (struct ext2_inode*,int) ;
 scalar_t__ ext2fs_write_inode (TYPE_1__*,int ,struct ext2_inode*) ;
 scalar_t__ ext2fs_write_new_inode (TYPE_1__*,int ,struct ext2_inode*) ;
 int memset (struct ext2_inode*,int ,int) ;

__attribute__((used)) static errcode_t xattr_create_ea_inode(ext2_filsys fs, const void *value,
           size_t value_len, ext2_ino_t *ea_ino)
{
 struct ext2_inode inode;
 ext2_ino_t ino;
 ext2_file_t file;
 __u32 hash;
 errcode_t ret;

 ret = ext2fs_new_inode(fs, 0, 0, 0, &ino);
 if (ret)
  return ret;

 memset(&inode, 0, sizeof(inode));
 inode.i_flags |= EXT4_EA_INODE_FL;
 if (ext2fs_has_feature_extents(fs->super))
  inode.i_flags |= EXT4_EXTENTS_FL;
 inode.i_size = 0;
 inode.i_mode = LINUX_S_IFREG | 0600;
 inode.i_links_count = 1;
 ret = ext2fs_write_new_inode(fs, ino, &inode);
 if (ret)
  return ret;






 ext2fs_set_ea_inode_ref(&inode, 1);
 hash = ext2fs_crc32c_le(fs->csum_seed, value, value_len);
 ext2fs_set_ea_inode_hash(&inode, hash);

 ret = ext2fs_write_inode(fs, ino, &inode);
 if (ret)
  return ret;

 ret = ext2fs_file_open(fs, ino, EXT2_FILE_WRITE, &file);
 if (ret)
  return ret;
 ret = ext2fs_file_write(file, value, value_len, ((void*)0));
 ext2fs_file_close(file);
 if (ret)
  return ret;

 ext2fs_inode_alloc_stats2(fs, ino, 1 , 0 );

 *ea_ino = ino;
 return 0;
}
