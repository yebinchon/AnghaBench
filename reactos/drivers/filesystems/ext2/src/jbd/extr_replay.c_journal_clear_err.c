
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_flags; int j_state_lock; scalar_t__ j_errno; } ;
typedef TYPE_1__ journal_t ;


 int EROFS ;
 int JFS_ABORT ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;

int journal_clear_err(journal_t *journal)
{
    int err = 0;

    jbd_lock(&journal->j_state_lock);
    if (journal->j_flags & JFS_ABORT)
        err = -EROFS;
    else
        journal->j_errno = 0;
    jbd_unlock(&journal->j_state_lock);
    return err;
}
