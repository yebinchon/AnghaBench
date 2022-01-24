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
typedef  int uint64_t ;
struct TYPE_3__ {int spa_max_ashift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SPA_MAXBLOCKSIZE ; 
 int SPA_MINBLOCKSHIFT ; 
 int SPA_OLD_MAXBLOCKSHIFT ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 
 TYPE_1__* ztest_spa ; 

__attribute__((used)) static int
FUNC3(void)
{
	FUNC0(ztest_spa->spa_max_ashift != 0);

	/*
	 * Choose a block size >= the ashift.
	 * If the SPA supports new MAXBLOCKSIZE, test up to 1MB blocks.
	 */
	int maxbs = SPA_OLD_MAXBLOCKSHIFT;
	if (FUNC1(ztest_spa) == SPA_MAXBLOCKSIZE)
		maxbs = 20;
	uint64_t block_shift =
	    FUNC2(maxbs - ztest_spa->spa_max_ashift + 1);
	return (1 << (SPA_MINBLOCKSHIFT + block_shift));
}