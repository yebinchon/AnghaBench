#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dn_struct_rwlock; TYPE_3__* dn_bonus; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_5__ {int /*<<< orphan*/  db_pending_evict; int /*<<< orphan*/  db_mtx; int /*<<< orphan*/  db_holds; } ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(dnode_t *dn)
{
	FUNC2(&dn->dn_struct_rwlock, RW_WRITER);
	if (dn->dn_bonus != NULL) {
		if (FUNC4(&dn->dn_bonus->db_holds)) {
			FUNC1(&dn->dn_bonus->db_mtx);
			FUNC0(dn->dn_bonus);
			dn->dn_bonus = NULL;
		} else {
			dn->dn_bonus->db_pending_evict = TRUE;
		}
	}
	FUNC3(&dn->dn_struct_rwlock);
}