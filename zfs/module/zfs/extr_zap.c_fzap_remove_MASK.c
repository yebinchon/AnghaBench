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
struct TYPE_4__ {int /*<<< orphan*/  zn_zap; int /*<<< orphan*/  zn_hash; } ;
typedef  TYPE_1__ zap_name_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  int /*<<< orphan*/  zap_entry_handle_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(zap_name_t *zn, dmu_tx_t *tx)
{
	zap_leaf_t *l;
	int err;
	zap_entry_handle_t zeh;

	err = FUNC0(zn->zn_zap, zn->zn_hash, tx, RW_WRITER, &l);
	if (err != 0)
		return (err);
	err = FUNC3(l, zn, &zeh);
	if (err == 0) {
		FUNC1(&zeh);
		FUNC2(zn->zn_zap, -1, tx);
	}
	FUNC4(l);
	return (err);
}