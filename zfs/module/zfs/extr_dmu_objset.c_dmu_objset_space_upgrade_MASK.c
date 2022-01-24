#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  os_upgrade_lock; scalar_t__ os_upgrade_exit; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FORREAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  JUSTLOOKING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(objset_t *os)
{
	uint64_t obj;
	int err = 0;

	/*
	 * We simply need to mark every object dirty, so that it will be
	 * synced out and now accounted.  If this is called
	 * concurrently, or if we already did some work before crashing,
	 * that's fine, since we track each object's accounted state
	 * independently.
	 */

	for (obj = 0; err == 0; err = FUNC4(os, &obj, FALSE, 0)) {
		dmu_tx_t *tx;
		dmu_buf_t *db;
		int objerr;

		FUNC11(&os->os_upgrade_lock);
		if (os->os_upgrade_exit)
			err = FUNC0(EINTR);
		FUNC12(&os->os_upgrade_lock);
		if (err != 0)
			return (err);

		if (FUNC10(JUSTLOOKING) && FUNC10(FORREAL))
			return (FUNC0(EINTR));

		objerr = FUNC1(os, obj, FTAG, &db);
		if (objerr != 0)
			continue;
		tx = FUNC8(os);
		FUNC9(tx, obj);
		objerr = FUNC6(tx, TXG_WAIT);
		if (objerr != 0) {
			FUNC2(db, FTAG);
			FUNC5(tx);
			continue;
		}
		FUNC3(db, tx);
		FUNC2(db, FTAG);
		FUNC7(tx);
	}
	return (0);
}