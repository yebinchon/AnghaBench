
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int SWRITE ;
 int WRITE ;
 int buffer_uptodate (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int submit_bh (int,struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 scalar_t__ test_set_buffer_locked (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void ll_rw_block(int rw, int nr, struct buffer_head * bhs[])
{
    int i;

    for (i = 0; i < nr; i++) {

        struct buffer_head *bh = bhs[i];

        if (rw == SWRITE)
            lock_buffer(bh);
        else if (test_set_buffer_locked(bh))
            continue;

        if (rw == WRITE || rw == SWRITE) {
            if (test_clear_buffer_dirty(bh)) {
                get_bh(bh);
                submit_bh(WRITE, bh);
                continue;
            }
        } else {
            if (!buffer_uptodate(bh)) {
                get_bh(bh);
                submit_bh(rw, bh);
                continue;
            }
        }
        unlock_buffer(bh);
    }
}
