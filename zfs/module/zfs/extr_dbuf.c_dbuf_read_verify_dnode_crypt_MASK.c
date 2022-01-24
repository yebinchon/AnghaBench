#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  os_spa; scalar_t__ os_raw_receive; int /*<<< orphan*/  os_encrypted; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_13__ {int /*<<< orphan*/  dn_bonustype; int /*<<< orphan*/  dn_type; TYPE_1__* dn_dbuf; } ;
typedef  TYPE_3__ dnode_t ;
struct TYPE_14__ {scalar_t__ db_blkid; int /*<<< orphan*/  db_mtx; TYPE_2__* db_objset; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;
struct TYPE_11__ {int /*<<< orphan*/  db_blkid; int /*<<< orphan*/ * db_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int DB_RF_NO_DECRYPT ; 
 scalar_t__ DMU_BONUS_BLKID ; 
 int /*<<< orphan*/  DMU_META_DNODE_OBJECT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC10(dmu_buf_impl_t *db, uint32_t flags)
{
	int err = 0;
	objset_t *os = db->db_objset;
	arc_buf_t *dnode_abuf;
	dnode_t *dn;
	zbookmark_phys_t zb;

	FUNC0(FUNC5(&db->db_mtx));

	if (!os->os_encrypted || os->os_raw_receive ||
	    (flags & DB_RF_NO_DECRYPT) != 0)
		return (0);

	FUNC2(db);
	dn = FUNC1(db);
	dnode_abuf = (dn->dn_dbuf != NULL) ? dn->dn_dbuf->db_buf : NULL;

	if (dnode_abuf == NULL || !FUNC7(dnode_abuf)) {
		FUNC3(db);
		return (0);
	}

	FUNC6(&zb, FUNC9(os),
	    DMU_META_DNODE_OBJECT, 0, dn->dn_dbuf->db_blkid);
	err = FUNC8(dnode_abuf, os->os_spa, &zb, B_TRUE);

	/*
	 * An error code of EACCES tells us that the key is still not
	 * available. This is ok if we are only reading authenticated
	 * (and therefore non-encrypted) blocks.
	 */
	if (err == EACCES && ((db->db_blkid != DMU_BONUS_BLKID &&
	    !FUNC4(dn->dn_type)) ||
	    (db->db_blkid == DMU_BONUS_BLKID &&
	    !FUNC4(dn->dn_bonustype))))
		err = 0;

	FUNC3(db);

	return (err);
}