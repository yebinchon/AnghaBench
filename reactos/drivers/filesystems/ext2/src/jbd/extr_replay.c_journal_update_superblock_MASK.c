#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ j_tail_sequence; scalar_t__ j_transaction_sequence; scalar_t__ j_tail; scalar_t__ j_errno; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_flags; struct buffer_head* j_sb_buffer; TYPE_2__* j_superblock; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_5__ {scalar_t__ s_start; void* s_errno; void* s_sequence; } ;
typedef  TYPE_2__ journal_superblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  JFS_FLUSHED ; 
 int /*<<< orphan*/  SWRITE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

void FUNC8(journal_t *journal, int wait)
{
    journal_superblock_t *sb = journal->j_superblock;
    struct buffer_head *bh = journal->j_sb_buffer;

    /*
     * As a special case, if the on-disk copy is already marked as needing
     * no recovery (s_start == 0) and there are no outstanding transactions
     * in the filesystem, then we can safely defer the superblock update
     * until the next commit by setting JFS_FLUSHED.  This avoids
     * attempting a write to a potential-readonly device.
     */
    if (sb->s_start == 0 && journal->j_tail_sequence ==
            journal->j_transaction_sequence) {
        FUNC2(1,"JBD: Skipping superblock update on recovered sb "
                  "(start %ld, seq %d, errno %d)\n",
                  journal->j_tail, journal->j_tail_sequence,
                  journal->j_errno);
        goto out;
    }

    FUNC3(&journal->j_state_lock);
    FUNC2(1,"JBD: updating superblock (start %ld, seq %d, errno %d)\n",
              journal->j_tail, journal->j_tail_sequence, journal->j_errno);

    sb->s_sequence = FUNC1(journal->j_tail_sequence);
    sb->s_start    = FUNC1(journal->j_tail);
    sb->s_errno    = FUNC1(journal->j_errno);
    FUNC4(&journal->j_state_lock);

    FUNC0(bh, "marking dirty");
    FUNC6(bh);
    if (wait)
        FUNC7(bh);
    else
        FUNC5(SWRITE, 1, &bh);

out:
    /* If we have just flushed the log (by marking s_start==0), then
     * any future commit will have to be careful to update the
     * superblock again to re-record the true start of the log. */

    FUNC3(&journal->j_state_lock);
    if (sb->s_start)
        journal->j_flags &= ~JFS_FLUSHED;
    else
        journal->j_flags |= JFS_FLUSHED;
    FUNC4(&journal->j_state_lock);
}