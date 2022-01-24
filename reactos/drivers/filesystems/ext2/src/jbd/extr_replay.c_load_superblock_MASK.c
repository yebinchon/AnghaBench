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
struct TYPE_5__ {void* j_errno; void* j_last; void* j_first; void* j_tail; void* j_tail_sequence; TYPE_2__* j_superblock; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_6__ {int /*<<< orphan*/  s_errno; int /*<<< orphan*/  s_maxlen; int /*<<< orphan*/  s_first; int /*<<< orphan*/  s_start; int /*<<< orphan*/  s_sequence; } ;
typedef  TYPE_2__ journal_superblock_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(journal_t *journal)
{
    int err;
    journal_superblock_t *sb;

    err = FUNC1(journal);
    if (err)
        return err;

    sb = journal->j_superblock;

    journal->j_tail_sequence = FUNC0(sb->s_sequence);
    journal->j_tail = FUNC0(sb->s_start);
    journal->j_first = FUNC0(sb->s_first);
    journal->j_last = FUNC0(sb->s_maxlen);
    journal->j_errno = FUNC0(sb->s_errno);

    return 0;
}