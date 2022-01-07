
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int j_commit_interval; int j_flags; int j_state_lock; int j_list_lock; int j_revoke_lock; int j_checkpoint_mutex; int j_barrier; int j_wait_updates; int j_wait_commit; int j_wait_checkpoint; int j_wait_done_commit; int j_wait_logspace; int j_wait_transaction_locked; } ;
typedef TYPE_1__ journal_t ;


 int GFP_KERNEL ;
 int HZ ;
 int JBD_DEFAULT_MAX_COMMIT_AGE ;
 int JFS_ABORT ;
 int JOURNAL_REVOKE_DEFAULT_HASH ;
 int init_waitqueue_head (int *) ;
 int jbd_lock_init (int *) ;
 int journal_init_revoke (TYPE_1__*,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static journal_t * journal_init_common (void)
{
    journal_t *journal;
    int err;

    journal = kzalloc(sizeof(*journal), GFP_KERNEL);
    if (!journal)
        goto fail;

    init_waitqueue_head(&journal->j_wait_transaction_locked);
    init_waitqueue_head(&journal->j_wait_logspace);
    init_waitqueue_head(&journal->j_wait_done_commit);
    init_waitqueue_head(&journal->j_wait_checkpoint);
    init_waitqueue_head(&journal->j_wait_commit);
    init_waitqueue_head(&journal->j_wait_updates);
    mutex_init(&journal->j_barrier);
    mutex_init(&journal->j_checkpoint_mutex);
    jbd_lock_init(&journal->j_revoke_lock);
    jbd_lock_init(&journal->j_list_lock);
    jbd_lock_init(&journal->j_state_lock);

    journal->j_commit_interval = (HZ * JBD_DEFAULT_MAX_COMMIT_AGE);


    journal->j_flags = JFS_ABORT;


    err = journal_init_revoke(journal, JOURNAL_REVOKE_DEFAULT_HASH);
    if (err) {
        kfree(journal);
        goto fail;
    }
    return journal;
fail:
    return ((void*)0);
}
