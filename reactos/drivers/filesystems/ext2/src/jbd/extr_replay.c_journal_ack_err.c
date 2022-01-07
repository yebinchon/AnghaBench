
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_state_lock; int j_flags; scalar_t__ j_errno; } ;
typedef TYPE_1__ journal_t ;


 int JFS_ACK_ERR ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;

void journal_ack_err(journal_t *journal)
{
    jbd_lock(&journal->j_state_lock);
    if (journal->j_errno)
        journal->j_flags |= JFS_ACK_ERR;
    jbd_unlock(&journal->j_state_lock);
}
