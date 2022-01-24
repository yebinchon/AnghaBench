#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_3__ {scalar_t__ lse_blkcount; } ;
typedef  TYPE_1__ log_summary_entry_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_max_logsm_summary_length ; 

__attribute__((used)) static boolean_t
FUNC3(spa_t *spa, log_summary_entry_t *e)
{
	uint64_t blocks_per_row = FUNC1(1,
	    FUNC0(FUNC2(spa),
	    zfs_max_logsm_summary_length));
	return (blocks_per_row <= e->lse_blkcount);
}