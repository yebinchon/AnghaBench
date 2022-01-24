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
typedef  int /*<<< orphan*/  kstat_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * kstat; } ;
typedef  TYPE_1__ dbuf_stats_t ;

/* Variables and functions */
 TYPE_1__ dbuf_stats_hash_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	dbuf_stats_t *dsh = &dbuf_stats_hash_table;
	kstat_t *ksp;

	ksp = dsh->kstat;
	if (ksp)
		FUNC0(ksp);

	FUNC1(&dsh->lock);
}