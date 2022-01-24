#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_6__ {int /*<<< orphan*/  dn_struct_rwlock; TYPE_2__* dn_bonus; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_7__ {int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dmu_buf_impl_t *
FUNC5(objset_t *os, uint64_t object)
{
	dnode_t *dn;
	dmu_buf_impl_t *db = NULL;

	if (FUNC0(os, object, FTAG, &dn) == 0) {
		FUNC3(&dn->dn_struct_rwlock, RW_READER);
		if (dn->dn_bonus != NULL) {
			db = dn->dn_bonus;
			FUNC2(&db->db_mtx);
		}
		FUNC4(&dn->dn_struct_rwlock);
		FUNC1(dn, FTAG);
	}
	return (db);
}