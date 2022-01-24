#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * j_sb_buffer; scalar_t__ j_tail; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC2(journal_t *journal)
{
    /* We can now mark the journal as empty. */

    journal->j_tail = 0;
    if (journal->j_sb_buffer) {
        FUNC1(journal, 0);
        FUNC0(journal->j_sb_buffer);
        journal->j_sb_buffer = NULL;
    }
}