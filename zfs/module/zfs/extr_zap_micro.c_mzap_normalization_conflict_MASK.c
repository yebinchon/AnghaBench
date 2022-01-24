#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zap_avl; } ;
struct TYPE_13__ {scalar_t__ zap_normflags; TYPE_1__ zap_m; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  zap_name_t ;
struct TYPE_14__ {scalar_t__ mze_hash; } ;
typedef  TYPE_3__ mzap_ent_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {int /*<<< orphan*/  mze_name; } ;

/* Variables and functions */
 int AVL_AFTER ; 
 int AVL_BEFORE ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  MT_NORMALIZE ; 
 TYPE_9__* FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC5(zap_t *zap, zap_name_t *zn, mzap_ent_t *mze)
{
	int direction = AVL_BEFORE;
	boolean_t allocdzn = B_FALSE;

	if (zap->zap_normflags == 0)
		return (B_FALSE);

again:
	for (mzap_ent_t *other = FUNC1(&zap->zap_m.zap_avl, mze, direction);
	    other && other->mze_hash == mze->mze_hash;
	    other = FUNC1(&zap->zap_m.zap_avl, other, direction)) {

		if (zn == NULL) {
			zn = FUNC3(zap, FUNC0(zap, mze)->mze_name,
			    MT_NORMALIZE);
			allocdzn = B_TRUE;
		}
		if (FUNC2(zn, FUNC0(zap, other)->mze_name)) {
			if (allocdzn)
				FUNC4(zn);
			return (B_TRUE);
		}
	}

	if (direction == AVL_BEFORE) {
		direction = AVL_AFTER;
		goto again;
	}

	if (allocdzn)
		FUNC4(zn);
	return (B_FALSE);
}