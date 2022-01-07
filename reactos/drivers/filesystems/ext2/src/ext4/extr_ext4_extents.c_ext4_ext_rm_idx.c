
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; int p_idx; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ eh_entries; } ;


 int BUG_ON (int) ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 int ext4_ext_dirty (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_access (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_free_blocks (void*,int *,struct inode*,int *,int ,int,int ) ;
 int ext4_idx_pblock (int ) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;

int ext4_ext_rm_idx(void *icb, handle_t *handle, struct inode *inode,
  struct ext4_ext_path *path)
{
 int err;
 ext4_fsblk_t leaf;


 path--;
 leaf = ext4_idx_pblock(path->p_idx);
 BUG_ON(path->p_hdr->eh_entries == 0);
 if ((err = ext4_ext_get_access(icb, handle, inode, path)))
  return err;
 path->p_hdr->eh_entries = cpu_to_le16(le16_to_cpu(path->p_hdr->eh_entries)-1);
 if ((err = ext4_ext_dirty(icb, handle, inode, path)))
  return err;
 ext4_free_blocks(icb, handle, inode, ((void*)0), leaf, 1, 0);
 return err;
}
