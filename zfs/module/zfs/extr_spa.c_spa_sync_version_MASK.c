#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {int /*<<< orphan*/  spa_root_vdev; TYPE_1__ spa_uberblock; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_12__ {scalar_t__ tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_13__ {TYPE_2__* dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ TXG_INITIAL ; 
 TYPE_8__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, dmu_tx_t *tx)
{
	uint64_t *versionp = arg;
	uint64_t version = *versionp;
	spa_t *spa = FUNC2(tx)->dp_spa;

	/*
	 * Setting the version is special cased when first creating the pool.
	 */
	FUNC0(tx->tx_txg != TXG_INITIAL);

	FUNC0(FUNC1(version));
	FUNC0(version >= FUNC4(spa));

	spa->spa_uberblock.ub_version = version;
	FUNC5(spa->spa_root_vdev);
	FUNC3(spa, "set", tx, "version=%lld",
	    (longlong_t)version);
}