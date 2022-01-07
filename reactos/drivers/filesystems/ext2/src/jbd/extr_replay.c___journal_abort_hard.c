
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_tid; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_6__ {int j_flags; int j_state_lock; TYPE_1__* j_running_transaction; } ;
typedef TYPE_2__ journal_t ;


 int JFS_ABORT ;
 int __log_start_commit (TYPE_2__*,int ) ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;

__attribute__((used)) static void __journal_abort_hard(journal_t *journal)
{
    transaction_t *transaction;

    if (journal->j_flags & JFS_ABORT)
        return;

    jbd_lock(&journal->j_state_lock);
    journal->j_flags |= JFS_ABORT;
    transaction = journal->j_running_transaction;
    if (transaction)
        __log_start_commit(journal, transaction->t_tid);
    jbd_unlock(&journal->j_state_lock);
}
