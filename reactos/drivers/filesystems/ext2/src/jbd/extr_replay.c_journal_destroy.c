
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* j_wbuf; scalar_t__ j_revoke; scalar_t__ j_inode; scalar_t__ j_sb_buffer; scalar_t__ j_transaction_sequence; scalar_t__ j_tail_sequence; scalar_t__ j_tail; int j_list_lock; int * j_checkpoint_transactions; int * j_committing_transaction; int * j_running_transaction; } ;
typedef TYPE_1__ journal_t ;


 int J_ASSERT (int ) ;
 int brelse (scalar_t__) ;
 int iput (scalar_t__) ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;
 int journal_commit_transaction (TYPE_1__*) ;
 int journal_destroy_revoke (TYPE_1__*) ;
 int journal_kill_thread (TYPE_1__*) ;
 int journal_update_superblock (TYPE_1__*,int) ;
 int kfree (TYPE_1__*) ;
 int log_do_checkpoint (TYPE_1__*) ;

void journal_destroy(journal_t *journal)
{
    if (journal->j_sb_buffer) {
        brelse(journal->j_sb_buffer);
    }
    if (journal->j_inode)
        iput(journal->j_inode);
    if (journal->j_revoke)
        journal_destroy_revoke(journal);
    kfree(journal->j_wbuf);
    kfree(journal);
}
