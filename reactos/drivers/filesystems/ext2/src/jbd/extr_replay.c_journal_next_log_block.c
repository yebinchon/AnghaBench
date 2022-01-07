
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int j_free; unsigned long j_head; unsigned long j_last; unsigned long j_first; int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int J_ASSERT (int) ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;
 int journal_bmap (TYPE_1__*,unsigned long,unsigned long*) ;

int journal_next_log_block(journal_t *journal, unsigned long *retp)
{
    unsigned long blocknr;

    jbd_lock(&journal->j_state_lock);
    J_ASSERT(journal->j_free > 1);

    blocknr = journal->j_head;
    journal->j_head++;
    journal->j_free--;
    if (journal->j_head == journal->j_last)
        journal->j_head = journal->j_first;
    jbd_unlock(&journal->j_state_lock);
    return journal_bmap(journal, blocknr, retp);
}
