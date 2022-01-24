#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_14__ {scalar_t__ db_level; int db_dirtycnt; scalar_t__ db_blkid; scalar_t__ db_buf; TYPE_5__* db_last_dirty; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
struct TYPE_12__ {int /*<<< orphan*/  dr_children; int /*<<< orphan*/  dr_mtx; } ;
struct TYPE_11__ {scalar_t__ dr_data; } ;
struct TYPE_13__ {TYPE_2__ di; TYPE_1__ dl; } ;
struct TYPE_15__ {TYPE_3__ dt; scalar_t__ dr_txg; TYPE_4__* dr_dbuf; } ;
typedef  TYPE_5__ dbuf_dirty_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(list_t *list)
{
	dbuf_dirty_record_t *dr;

	while ((dr = FUNC5(list))) {
		dmu_buf_impl_t *db = dr->dr_dbuf;
		uint64_t txg = dr->dr_txg;

		if (db->db_level != 0)
			FUNC9(&dr->dt.di.dr_children);

		FUNC8(&db->db_mtx);
		/* XXX - use dbuf_undirty()? */
		FUNC6(list, dr);
		FUNC0(db->db_last_dirty == dr);
		db->db_last_dirty = NULL;
		db->db_dirtycnt -= 1;
		if (db->db_level == 0) {
			FUNC0(db->db_blkid == DMU_BONUS_BLKID ||
			    dr->dt.dl.dr_data == db->db_buf);
			FUNC2(dr);
		} else {
			FUNC7(&dr->dt.di.dr_mtx);
			FUNC4(&dr->dt.di.dr_children);
		}
		FUNC3(dr, sizeof (dbuf_dirty_record_t));
		FUNC1(db, (void *)(uintptr_t)txg, B_FALSE);
	}
}