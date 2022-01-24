#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_7__ {scalar_t__ db_state; int /*<<< orphan*/  db_mtx; struct TYPE_7__* db_hash_next; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;
struct TYPE_8__ {size_t hash_table_mask; TYPE_1__** hash_table; } ;
typedef  TYPE_2__ dbuf_hash_table_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,size_t) ; 
 scalar_t__ DB_EVICTING ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__ dbuf_hash_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

dmu_buf_impl_t *
FUNC5(objset_t *os, uint64_t obj, uint8_t level, uint64_t blkid)
{
	dbuf_hash_table_t *h = &dbuf_hash_table;
	uint64_t hv;
	uint64_t idx;
	dmu_buf_impl_t *db;

	hv = FUNC2(os, obj, level, blkid);
	idx = hv & h->hash_table_mask;

	FUNC3(FUNC1(h, idx));
	for (db = h->hash_table[idx]; db != NULL; db = db->db_hash_next) {
		if (FUNC0(db, os, obj, level, blkid)) {
			FUNC3(&db->db_mtx);
			if (db->db_state != DB_EVICTING) {
				FUNC4(FUNC1(h, idx));
				return (db);
			}
			FUNC4(&db->db_mtx);
		}
	}
	FUNC4(FUNC1(h, idx));
	return (NULL);
}