#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_13__ {int db_size; int /*<<< orphan*/  db_data; } ;
struct TYPE_14__ {scalar_t__ db_blkid; int /*<<< orphan*/  db_mtx; TYPE_4__* db_buf; TYPE_2__ db; TYPE_1__* db_objset; int /*<<< orphan*/  db_holds; } ;
typedef  TYPE_3__ dmu_buf_impl_t ;
struct TYPE_15__ {int /*<<< orphan*/  b_data; } ;
typedef  TYPE_4__ arc_buf_t ;
struct TYPE_12__ {int /*<<< orphan*/ * os_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

arc_buf_t *
FUNC9(dmu_buf_impl_t *db)
{
	arc_buf_t *abuf;

	FUNC0(db->db_blkid != DMU_BONUS_BLKID);
	FUNC6(&db->db_mtx);
	if (FUNC3(db->db_buf) || FUNC8(&db->db_holds) > 1) {
		int blksz = db->db.db_size;
		spa_t *spa = db->db_objset->os_spa;

		FUNC7(&db->db_mtx);
		abuf = FUNC1(spa, B_FALSE, blksz);
		FUNC4(db->db.db_data, abuf->b_data, blksz);
	} else {
		abuf = db->db_buf;
		FUNC2(abuf, db);
		db->db_buf = NULL;
		FUNC5(db);
		FUNC7(&db->db_mtx);
	}
	return (abuf);
}