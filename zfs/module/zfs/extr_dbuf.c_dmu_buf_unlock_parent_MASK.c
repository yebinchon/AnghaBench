#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  db_objset; TYPE_1__* db_parent; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
typedef  scalar_t__ db_lock_type_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_bp_rwlock; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_rwlock; } ;

/* Variables and functions */
 scalar_t__ DLT_OBJSET ; 
 scalar_t__ DLT_PARENT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(dmu_buf_impl_t *db, db_lock_type_t type, void *tag)
{
	if (type == DLT_PARENT)
		FUNC2(&db->db_parent->db_rwlock);
	else if (type == DLT_OBJSET)
		FUNC1(&FUNC0(db->db_objset)->ds_bp_rwlock, tag);
}