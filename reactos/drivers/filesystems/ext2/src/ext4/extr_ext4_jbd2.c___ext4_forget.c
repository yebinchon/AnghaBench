
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;



int __ext4_forget(const char *where, unsigned int line, void *icb, handle_t *handle,
    int is_metadata, struct inode *inode,
    struct buffer_head *bh, ext4_fsblk_t blocknr)
{
 int err = 0;
 return err;
}
