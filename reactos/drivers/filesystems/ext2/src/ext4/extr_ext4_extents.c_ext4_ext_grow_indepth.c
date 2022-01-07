
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_depth; void* eh_max; void* eh_entries; void* eh_magic; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {int i_block; } ;
struct TYPE_7__ {int ee_block; } ;
struct TYPE_6__ {int ei_block; } ;


 int ENOMEM ;
 int EXT4_EXT_MAGIC ;
 TYPE_5__* EXT4_I (struct inode*) ;
 TYPE_4__* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 TYPE_1__* EXT_FIRST_INDEX (struct ext4_extent_header*) ;
 void* cpu_to_le16 (int) ;
 int ext4_ext_space_block (struct inode*,int ) ;
 int ext4_ext_space_block_idx (struct inode*,int ) ;
 int ext4_ext_space_root_idx (struct inode*,int ) ;
 int ext4_extent_block_csum_set (struct inode*,struct ext4_extent_header*) ;
 int ext4_handle_dirty_metadata (void*,int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_idx_pblock (TYPE_1__*) ;
 int ext4_idx_store_pblock (TYPE_1__*,scalar_t__) ;
 scalar_t__ ext4_inode_to_goal_block (struct inode*) ;
 int ext4_journal_get_create_access (void*,int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (void*,int *,struct inode*) ;
 scalar_t__ ext4_new_meta_blocks (void*,int *,struct inode*,scalar_t__,unsigned int,int *,int*) ;
 struct ext4_extent_header* ext_block_hdr (struct buffer_head*) ;
 int ext_debug (char*,void*,void*,int ,scalar_t__) ;
 scalar_t__ ext_depth (struct inode*) ;
 struct ext4_extent_header* ext_inode_hdr (struct inode*) ;
 int extents_brelse (struct buffer_head*) ;
 struct buffer_head* extents_bwrite (int ,scalar_t__) ;
 int le16_add_cpu (scalar_t__*,int) ;
 int memmove (int ,int ,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int ext4_ext_grow_indepth(void *icb, handle_t *handle, struct inode *inode,
  unsigned int flags)
{
 struct ext4_extent_header *neh;
 struct buffer_head *bh;
 ext4_fsblk_t newblock, goal = 0;
 int err = 0;


 if (ext_depth(inode))
  goal = ext4_idx_pblock(EXT_FIRST_INDEX(ext_inode_hdr(inode)));
 goal = ext4_inode_to_goal_block(inode);
 newblock = ext4_new_meta_blocks(icb, handle, inode, goal, flags,
   ((void*)0), &err);
 if (newblock == 0)
  return err;

 bh = extents_bwrite(inode->i_sb, newblock);
 if (!bh)
  return -ENOMEM;

 err = ext4_journal_get_create_access(icb, handle, bh);
 if (err)
  goto out;


 memmove(bh->b_data, EXT4_I(inode)->i_block,
   sizeof(EXT4_I(inode)->i_block));


 neh = ext_block_hdr(bh);


 if (ext_depth(inode))
  neh->eh_max = cpu_to_le16(ext4_ext_space_block_idx(inode, 0));
 else
  neh->eh_max = cpu_to_le16(ext4_ext_space_block(inode, 0));
 neh->eh_magic = cpu_to_le16(EXT4_EXT_MAGIC);
 ext4_extent_block_csum_set(inode, neh);
 set_buffer_uptodate(bh);

 err = ext4_handle_dirty_metadata(icb, handle, inode, bh);
 if (err)
  goto out;


 neh = ext_inode_hdr(inode);
 neh->eh_entries = cpu_to_le16(1);
 ext4_idx_store_pblock(EXT_FIRST_INDEX(neh), newblock);
 if (neh->eh_depth == 0) {

  neh->eh_max = cpu_to_le16(ext4_ext_space_root_idx(inode, 0));
  EXT_FIRST_INDEX(neh)->ei_block =
   EXT_FIRST_EXTENT(neh)->ee_block;
 }
 ext_debug("new root: num %d(%d), lblock %d, ptr %llu\n",
   (neh->eh_entries), (neh->eh_max),
   (EXT_FIRST_INDEX(neh)->ei_block),
   ext4_idx_pblock(EXT_FIRST_INDEX(neh)));

 le16_add_cpu(&neh->eh_depth, 1);
 ext4_mark_inode_dirty(icb, handle, inode);
out:
 extents_brelse(bh);

 return err;
}
