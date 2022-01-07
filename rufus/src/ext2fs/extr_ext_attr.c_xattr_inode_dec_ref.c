
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct ext2_inode_large {scalar_t__ i_dtime; scalar_t__ i_links_count; } ;
struct ext2_inode {int dummy; } ;
typedef int inode ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u64 ;
struct TYPE_9__ {scalar_t__ now; } ;


 int EXT2_INODE (struct ext2_inode_large*) ;
 scalar_t__ ext2fs_free_ext_attr (TYPE_1__*,int ,struct ext2_inode_large*) ;
 scalar_t__ ext2fs_get_ea_inode_ref (int ) ;
 int ext2fs_inode_alloc_stats2 (TYPE_1__*,int ,int,int ) ;
 scalar_t__ ext2fs_inode_has_valid_blocks2 (TYPE_1__*,struct ext2_inode*) ;
 scalar_t__ ext2fs_punch (TYPE_1__*,int ,struct ext2_inode*,int *,int ,unsigned long long) ;
 scalar_t__ ext2fs_read_inode_full (TYPE_1__*,int ,struct ext2_inode*,int) ;
 int ext2fs_set_ea_inode_ref (int ,scalar_t__) ;
 scalar_t__ ext2fs_write_inode_full (TYPE_1__*,int ,struct ext2_inode*,int) ;
 scalar_t__ time (int ) ;

__attribute__((used)) static errcode_t xattr_inode_dec_ref(ext2_filsys fs, ext2_ino_t ino)
{
 struct ext2_inode_large inode;
 __u64 ref_count;
 errcode_t ret;

 ret = ext2fs_read_inode_full(fs, ino, (struct ext2_inode *)&inode,
         sizeof(inode));
 if (ret)
  goto out;

 ref_count = ext2fs_get_ea_inode_ref(EXT2_INODE(&inode));
 ref_count--;
 ext2fs_set_ea_inode_ref(EXT2_INODE(&inode), ref_count);

 if (ref_count)
  goto write_out;

 inode.i_links_count = 0;
 inode.i_dtime = fs->now ? fs->now : time(0);

 ret = ext2fs_free_ext_attr(fs, ino, &inode);
 if (ret)
  goto write_out;

 if (ext2fs_inode_has_valid_blocks2(fs, (struct ext2_inode *)&inode)) {
  ret = ext2fs_punch(fs, ino, (struct ext2_inode *)&inode, ((void*)0),
       0, ~0ULL);
  if (ret)
   goto out;
 }

 ext2fs_inode_alloc_stats2(fs, ino, -1 , 0 );

write_out:
 ret = ext2fs_write_inode_full(fs, ino, (struct ext2_inode *)&inode,
          sizeof(inode));
out:
 return ret;
}
