
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_count; } ;


 int ASSERT (int) ;
 int WRITE ;
 int atomic_read (int *) ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int sync_dirty_buffer(struct buffer_head *bh)
{
    int ret = 0;

    ASSERT(atomic_read(&bh->b_count) <= 1);
    lock_buffer(bh);
    if (test_clear_buffer_dirty(bh)) {
        get_bh(bh);
        ret = submit_bh(WRITE, bh);
        wait_on_buffer(bh);
    } else {
        unlock_buffer(bh);
    }
    return ret;
}
