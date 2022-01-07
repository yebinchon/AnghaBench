
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_flags; int j_errno; int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int EROFS ;
 int JFS_ABORT ;
 int jbd_lock (int *) ;
 int jbd_unlock (int *) ;

int journal_errno(journal_t *journal)
{
    int err;

    jbd_lock(&journal->j_state_lock);
    if (journal->j_flags & JFS_ABORT)
        err = -EROFS;
    else
        err = journal->j_errno;
    jbd_unlock(&journal->j_state_lock);
    return err;
}
