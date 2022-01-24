#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  dn_struct_rwlock; int /*<<< orphan*/  dn_dbufs_count; TYPE_2__* dn_bonus; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_11__ {int /*<<< orphan*/  db; int /*<<< orphan*/  db_holds; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;

/* Variables and functions */
 int DB_RF_MUST_SUCCEED ; 
 int DB_RF_NOPREFETCH ; 
 int DB_RF_NO_DECRYPT ; 
 int DMU_READ_NO_DECRYPT ; 
 int DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*) ; 

int FUNC10(dnode_t *dn, void *tag, dmu_buf_t **dbp,
    uint32_t flags)
{
	dmu_buf_impl_t *db;
	int error;
	uint32_t db_flags = DB_RF_MUST_SUCCEED;

	if (flags & DMU_READ_NO_PREFETCH)
		db_flags |= DB_RF_NOPREFETCH;
	if (flags & DMU_READ_NO_DECRYPT)
		db_flags |= DB_RF_NO_DECRYPT;

	FUNC7(&dn->dn_struct_rwlock, RW_READER);
	if (dn->dn_bonus == NULL) {
		FUNC8(&dn->dn_struct_rwlock);
		FUNC7(&dn->dn_struct_rwlock, RW_WRITER);
		if (dn->dn_bonus == NULL)
			FUNC2(dn);
	}
	db = dn->dn_bonus;

	/* as long as the bonus buf is held, the dnode will be held */
	if (FUNC9(&db->db_holds, tag) == 1) {
		FUNC0(FUNC5(dn, db));
		FUNC1(&dn->dn_dbufs_count);
	}

	/*
	 * Wait to drop dn_struct_rwlock until after adding the bonus dbuf's
	 * hold and incrementing the dbuf count to ensure that dnode_move() sees
	 * a dnode hold for every dbuf.
	 */
	FUNC8(&dn->dn_struct_rwlock);

	error = FUNC3(db, NULL, db_flags);
	if (error) {
		FUNC6(dn);
		FUNC4(db, tag);
		*dbp = NULL;
		return (error);
	}

	*dbp = &db->db;
	return (0);
}