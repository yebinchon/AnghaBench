#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* j_wbuf; scalar_t__ j_revoke; scalar_t__ j_inode; scalar_t__ j_sb_buffer; scalar_t__ j_transaction_sequence; scalar_t__ j_tail_sequence; scalar_t__ j_tail; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/ * j_checkpoint_transactions; int /*<<< orphan*/ * j_committing_transaction; int /*<<< orphan*/ * j_running_transaction; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11(journal_t *journal)
{
#if 0
    /* Wait for the commit thread to wake up and die. */
    journal_kill_thread(journal);

    /* Force a final log commit */
    if (journal->j_running_transaction)
        journal_commit_transaction(journal);

    /* Force any old transactions to disk */

    /* Totally anal locking here... */
    jbd_lock(&journal->j_list_lock);
    while (journal->j_checkpoint_transactions != NULL) {
        jbd_unlock(&journal->j_list_lock);
        log_do_checkpoint(journal);
        jbd_lock(&journal->j_list_lock);
    }

    J_ASSERT(journal->j_running_transaction == NULL);
    J_ASSERT(journal->j_committing_transaction == NULL);
    J_ASSERT(journal->j_checkpoint_transactions == NULL);
    jbd_unlock(&journal->j_list_lock);

    /* We can now mark the journal as empty. */
    journal->j_tail = 0;
    journal->j_tail_sequence = ++journal->j_transaction_sequence;
    if (journal->j_sb_buffer) {
        journal_update_superblock(journal, 1);
        brelse(journal->j_sb_buffer);
    }
#endif

    if (journal->j_sb_buffer) {
        FUNC1(journal->j_sb_buffer);
    }
    if (journal->j_inode)
        FUNC2(journal->j_inode);
    if (journal->j_revoke)
        FUNC6(journal);
    FUNC9(journal->j_wbuf);
    FUNC9(journal);
}