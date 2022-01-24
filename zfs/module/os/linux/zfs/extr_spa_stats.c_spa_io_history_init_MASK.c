#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_4__* kstat; } ;
struct TYPE_9__ {TYPE_3__ io_history; } ;
struct TYPE_10__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_history_kstat_t ;
struct TYPE_12__ {int /*<<< orphan*/  ks_update; TYPE_2__* ks_private; int /*<<< orphan*/ * ks_lock; } ;
typedef  TYPE_4__ kstat_t ;

/* Variables and functions */
 int /*<<< orphan*/  KSTAT_TYPE_IO ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_io_history_update ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(spa_t *spa)
{
	spa_history_kstat_t *shk = &spa->spa_stats.io_history;
	char *name;
	kstat_t *ksp;

	FUNC4(&shk->lock, NULL, MUTEX_DEFAULT, NULL);

	name = FUNC0("zfs/%s", FUNC5(spa));

	ksp = FUNC2(name, 0, "io", "disk", KSTAT_TYPE_IO, 1, 0);
	shk->kstat = ksp;

	if (ksp) {
		ksp->ks_lock = &shk->lock;
		ksp->ks_private = spa;
		ksp->ks_update = spa_io_history_update;
		FUNC3(ksp);
	}
	FUNC1(name);
}