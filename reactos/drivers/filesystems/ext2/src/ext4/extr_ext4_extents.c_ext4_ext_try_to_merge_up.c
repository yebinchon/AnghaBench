
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_ext_path {int p_depth; int p_bh; TYPE_1__* p_hdr; scalar_t__ p_ext; int p_maxdepth; int p_idx; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {int eh_max; int eh_entries; } ;


 int EXT4_FREE_BLOCKS_FORGET ;
 int EXT4_FREE_BLOCKS_METADATA ;
 scalar_t__ EXT_FIRST_EXTENT (TYPE_1__*) ;
 int cpu_to_le16 (unsigned int) ;
 unsigned int ext4_ext_space_root (struct inode*,int ) ;
 int ext4_free_blocks (void*,int *,struct inode*,int *,int ,int,int) ;
 int ext4_idx_pblock (int ) ;
 scalar_t__ ext4_journal_extend (void*,int *,int) ;
 int extents_brelse (int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,size_t) ;

__attribute__((used)) static void ext4_ext_try_to_merge_up(void *icb, handle_t *handle,
  struct inode *inode,
  struct ext4_ext_path *path)
{
 size_t s;
 unsigned max_root = ext4_ext_space_root(inode, 0);
 ext4_fsblk_t blk;

 if ((path[0].p_depth != 1) ||
   (le16_to_cpu(path[0].p_hdr->eh_entries) != 1) ||
   (le16_to_cpu(path[1].p_hdr->eh_entries) > max_root))
  return;






 if (ext4_journal_extend(icb, handle, 2))
  return;




 blk = ext4_idx_pblock(path[0].p_idx);
 s = le16_to_cpu(path[1].p_hdr->eh_entries) *
  sizeof(struct ext4_extent_idx);
 s += sizeof(struct ext4_extent_header);

 path[1].p_maxdepth = path[0].p_maxdepth;
 memcpy(path[0].p_hdr, path[1].p_hdr, s);
 path[0].p_depth = 0;
 path[0].p_ext = EXT_FIRST_EXTENT(path[0].p_hdr) +
  (path[1].p_ext - EXT_FIRST_EXTENT(path[1].p_hdr));
 path[0].p_hdr->eh_max = cpu_to_le16(max_root);

 extents_brelse(path[1].p_bh);
 ext4_free_blocks(icb, handle, inode, ((void*)0), blk, 1,
   EXT4_FREE_BLOCKS_METADATA | EXT4_FREE_BLOCKS_FORGET);
}
