
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int extents_mark_buffer_dirty (struct buffer_head*) ;

int __ext4_handle_dirty_metadata(const char *where, unsigned int line,
     void *icb, handle_t *handle, struct inode *inode,
     struct buffer_head *bh)
{
 int err = 0;

 extents_mark_buffer_dirty(bh);
 return err;
}
