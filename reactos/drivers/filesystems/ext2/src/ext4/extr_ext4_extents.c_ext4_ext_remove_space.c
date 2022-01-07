
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ eh_entries; int eh_max; scalar_t__ eh_depth; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ EXT_LAST_INDEX (TYPE_1__*) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ext4_ext_check_inode (struct inode*) ;
 int ext4_ext_dirty (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_get_access (void*,int *,struct inode*,struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_more_to_rm (struct ext4_ext_path*) ;
 int ext4_ext_rm_idx (void*,int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_rm_leaf (void*,int *,struct inode*,struct ext4_ext_path*,unsigned long) ;
 int ext4_ext_space_root (struct inode*,int ) ;
 int ext4_idx_pblock (scalar_t__) ;
 int ext4_journal_stop (void*,int *) ;
 TYPE_1__* ext_block_hdr (struct buffer_head*) ;
 int ext_depth (struct inode*) ;
 TYPE_1__* ext_inode_hdr (struct inode*) ;
 int extents_brelse (struct buffer_head*) ;
 int kfree (struct ext4_ext_path*) ;
 struct ext4_ext_path* kmalloc (int,int ) ;
 void* le16_to_cpu (scalar_t__) ;
 int memset (struct ext4_ext_path*,int ,int) ;
 struct buffer_head* read_extent_tree_block (struct inode*,int ,int,int ) ;

int ext4_ext_remove_space(void *icb, struct inode *inode, unsigned long start)
{
 struct super_block *sb = inode->i_sb;
 int depth = ext_depth(inode);
 struct ext4_ext_path *path;
 handle_t *handle = ((void*)0);
 int i = 0, err = 0;
 path = kmalloc(sizeof(struct ext4_ext_path) * (depth + 1), GFP_KERNEL);
 if (path == ((void*)0)) {
  ext4_journal_stop(icb, handle);
  return -ENOMEM;
 }
 memset(path, 0, sizeof(struct ext4_ext_path) * (depth + 1));
 path[0].p_hdr = ext_inode_hdr(inode);
 if (ext4_ext_check_inode(inode)) {
  err = -EIO;
  goto out;
 }
 path[0].p_depth = depth;

 while (i >= 0 && err == 0) {
  if (i == depth) {

   err = ext4_ext_rm_leaf(icb, handle, inode, path, start);

   extents_brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
   continue;
  }


  if (!path[i].p_hdr) {
   path[i].p_hdr = ext_block_hdr(path[i].p_bh);
  }

  if (!path[i].p_idx) {

   path[i].p_idx = EXT_LAST_INDEX(path[i].p_hdr);
   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries)+1;
  } else {

   path[i].p_idx--;
  }

  if (ext4_ext_more_to_rm(path + i)) {
   struct buffer_head *bh;

   memset(path + i + 1, 0, sizeof(*path));
   bh = read_extent_tree_block(inode, ext4_idx_pblock(path[i].p_idx), path[0].p_depth - (i + 1), 0);
   if (IS_ERR(bh)) {

    err = -EIO;
    break;
   }
   path[i+1].p_bh = bh;



   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries);
   i++;
  } else {

   if (path[i].p_hdr->eh_entries == 0 && i > 0) {



    err = ext4_ext_rm_idx(icb, handle, inode, path + i);
   }

   extents_brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
  }
 }


 if (path->p_hdr->eh_entries == 0) {




  err = ext4_ext_get_access(icb, handle, inode, path);
  if (err == 0) {
   ext_inode_hdr(inode)->eh_depth = 0;
   ext_inode_hdr(inode)->eh_max =
    cpu_to_le16(ext4_ext_space_root(inode, 0));
   err = ext4_ext_dirty(icb, handle, inode, path);
  }
 }
out:
 if (path) {
  ext4_ext_drop_refs(path);
  kfree(path);
 }
 ext4_journal_stop(icb, handle);

 return err;
}
