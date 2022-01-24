#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/  dn_holds; TYPE_3__* dn_handle; TYPE_4__* dn_dbuf; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_8__ {scalar_t__ zr_owner; } ;
struct TYPE_10__ {TYPE_1__ dnh_zrlock; } ;
typedef  TYPE_3__ dnode_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*) ; 

void
FUNC5(dnode_t *dn, void *tag, boolean_t evicting)
{
	uint64_t refs;
	/* Get while the hold prevents the dnode from moving. */
	dmu_buf_impl_t *db = dn->dn_dbuf;
	dnode_handle_t *dnh = dn->dn_handle;

	refs = FUNC4(&dn->dn_holds, tag);
	FUNC3(&dn->dn_mtx);

	/*
	 * It's unsafe to release the last hold on a dnode by dnode_rele() or
	 * indirectly by dbuf_rele() while relying on the dnode handle to
	 * prevent the dnode from moving, since releasing the last hold could
	 * result in the dnode's parent dbuf evicting its dnode handles. For
	 * that reason anyone calling dnode_rele() or dbuf_rele() without some
	 * other direct or indirect hold on the dnode must first drop the dnode
	 * handle.
	 */
	FUNC0(refs > 0 || dnh->dnh_zrlock.zr_owner != curthread);

	/* NOTE: the DNODE_DNODE does not have a dn_dbuf */
	if (refs == 0 && db != NULL) {
		/*
		 * Another thread could add a hold to the dnode handle in
		 * dnode_hold_impl() while holding the parent dbuf. Since the
		 * hold on the parent dbuf prevents the handle from being
		 * destroyed, the hold on the handle is OK. We can't yet assert
		 * that the handle has zero references, but that will be
		 * asserted anyway when the handle gets destroyed.
		 */
		FUNC2(&db->db_mtx);
		FUNC1(db, dnh, evicting);
	}
}