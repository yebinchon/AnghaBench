
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;
struct journal_head {scalar_t__ b_cp_transaction; } ;
struct buffer_head {int dummy; } ;


 int BJ_Forget ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __brelse (struct buffer_head*) ;
 int __journal_file_buffer (struct journal_head*,int *,int ) ;
 int __journal_unfile_buffer (struct journal_head*) ;
 int clear_buffer_jbddirty (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 int journal_remove_journal_head (struct buffer_head*) ;

__attribute__((used)) static int __dispose_buffer(struct journal_head *jh, transaction_t *transaction)
{
    int may_free = 1;
    struct buffer_head *bh = jh2bh(jh);

    __journal_unfile_buffer(jh);

    if (jh->b_cp_transaction) {
        JBUFFER_TRACE(jh, "on running+cp transaction");
        __journal_file_buffer(jh, transaction, BJ_Forget);
        clear_buffer_jbddirty(bh);
        may_free = 0;
    } else {
        JBUFFER_TRACE(jh, "on running transaction");
        journal_remove_journal_head(bh);
        __brelse(bh);
    }
    return may_free;
}
