#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_6__ {int j_flags; int /*<<< orphan*/  j_state_lock; TYPE_1__* j_running_transaction; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int JFS_ABORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(journal_t *journal)
{
    transaction_t *transaction;

    if (journal->j_flags & JFS_ABORT)
        return;

    FUNC1(&journal->j_state_lock);
    journal->j_flags |= JFS_ABORT;
    transaction = journal->j_running_transaction;
    if (transaction)
        FUNC0(journal, transaction->t_tid);
    FUNC2(&journal->j_state_lock);
}