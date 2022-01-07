
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_fsblk_t ;


 int EIO ;
 int ENOMEM ;
 struct buffer_head* ERR_PTR (int) ;
 int __ext4_ext_check (char const*,unsigned int,struct inode*,int ,int,int ) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ buffer_verified (struct buffer_head*) ;
 int ext_block_hdr (struct buffer_head*) ;
 struct buffer_head* extents_bread (int ,int ) ;
 int extents_brelse (struct buffer_head*) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
__read_extent_tree_block(const char *function, unsigned int line,
  struct inode *inode, ext4_fsblk_t pblk, int depth,
  int flags)
{
 struct buffer_head *bh;
 int err;

 bh = extents_bread(inode->i_sb, pblk);
 if (!bh)
  return ERR_PTR(-ENOMEM);

 if (!buffer_uptodate(bh)) {
  err = -EIO;
  goto errout;
 }
 if (buffer_verified(bh))
  return bh;
 err = __ext4_ext_check(function, line, inode,
   ext_block_hdr(bh), depth, pblk);
 if (err)
  goto errout;
 set_buffer_verified(bh);
 return bh;
errout:
 extents_brelse(bh);
 return ERR_PTR(err);

}
