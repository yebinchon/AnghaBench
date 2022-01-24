#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  lock; TYPE_4__* kstat; } ;
struct TYPE_10__ {TYPE_3__ state; } ;
struct TYPE_11__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_history_kstat_t ;
struct TYPE_13__ {int /*<<< orphan*/  ks_flags; TYPE_2__* ks_private; int /*<<< orphan*/ * ks_data; int /*<<< orphan*/ * ks_lock; } ;
typedef  TYPE_4__ kstat_t ;

/* Variables and functions */
 int /*<<< orphan*/  KSTAT_FLAG_NO_HEADERS ; 
 int /*<<< orphan*/  KSTAT_FLAG_VIRTUAL ; 
 int /*<<< orphan*/  KSTAT_TYPE_RAW ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  spa_state_addr ; 
 int /*<<< orphan*/  spa_state_data ; 

__attribute__((used)) static void
FUNC7(spa_t *spa)
{
	spa_history_kstat_t *shk = &spa->spa_stats.state;
	char *name;
	kstat_t *ksp;

	FUNC5(&shk->lock, NULL, MUTEX_DEFAULT, NULL);

	name = FUNC0("zfs/%s", FUNC6(spa));
	ksp = FUNC2(name, 0, "state", "misc",
	    KSTAT_TYPE_RAW, 0, KSTAT_FLAG_VIRTUAL);

	shk->kstat = ksp;
	if (ksp) {
		ksp->ks_lock = &shk->lock;
		ksp->ks_data = NULL;
		ksp->ks_private = spa;
		ksp->ks_flags |= KSTAT_FLAG_NO_HEADERS;
		FUNC4(ksp, NULL, spa_state_data, spa_state_addr);
		FUNC3(ksp);
	}

	FUNC1(name);
}