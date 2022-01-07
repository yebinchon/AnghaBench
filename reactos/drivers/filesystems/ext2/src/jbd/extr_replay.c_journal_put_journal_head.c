
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {scalar_t__ b_jcount; int b_transaction; } ;
struct buffer_head {int dummy; } ;


 int J_ASSERT_JH (struct journal_head*,int) ;
 int __brelse (struct buffer_head*) ;
 int __journal_remove_journal_head (struct buffer_head*) ;
 int jbd_lock_bh_journal_head (struct buffer_head*) ;
 int jbd_unlock_bh_journal_head (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;

void journal_put_journal_head(struct journal_head *jh)
{
    struct buffer_head *bh = jh2bh(jh);

    jbd_lock_bh_journal_head(bh);
    J_ASSERT_JH(jh, jh->b_jcount > 0);
    --jh->b_jcount;
    if (!jh->b_jcount && !jh->b_transaction) {
        __journal_remove_journal_head(bh);
        __brelse(bh);
    }
    jbd_unlock_bh_journal_head(bh);
}
