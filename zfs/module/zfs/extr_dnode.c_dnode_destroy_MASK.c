#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  os_lock; int /*<<< orphan*/  os_evicting_node; int /*<<< orphan*/  os_dnodes; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_12__ {int dn_id_flags; int /*<<< orphan*/  dn_zfetch; void* dn_newprojid; scalar_t__ dn_newgid; scalar_t__ dn_newuid; void* dn_oldprojid; scalar_t__ dn_oldgid; scalar_t__ dn_olduid; scalar_t__ dn_oldflags; scalar_t__ dn_oldused; void* dn_have_spill; int /*<<< orphan*/ * dn_zio; TYPE_8__* dn_bonus; int /*<<< orphan*/ * dn_dirtyctx_firstset; scalar_t__ dn_dirtyctx; scalar_t__ dn_dirty_txg; scalar_t__ dn_assigned_txg; scalar_t__ dn_free_txg; scalar_t__ dn_allocated_txg; TYPE_1__* dn_handle; int /*<<< orphan*/  dn_object; TYPE_2__* dn_objset; } ;
typedef  TYPE_3__ dnode_t ;
typedef  int boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  db_mtx; } ;
struct TYPE_10__ {int /*<<< orphan*/  dnh_zrlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_DNODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DN_ID_NEW_EXIST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 void* ZFS_DEFAULT_PROJID ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dnode_cache ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(dnode_t *dn)
{
	objset_t *os = dn->dn_objset;
	boolean_t complete_os_eviction = B_FALSE;

	FUNC0((dn->dn_id_flags & DN_ID_NEW_EXIST) == 0);

	FUNC12(&os->os_lock);
	FUNC2(&dn->dn_objset);
	if (!FUNC1(dn->dn_object)) {
		FUNC11(&os->os_dnodes, dn);
		complete_os_eviction =
		    FUNC9(&os->os_dnodes) &&
		    FUNC10(&os->os_evicting_node);
	}
	FUNC13(&os->os_lock);

	/* the dnode can no longer move, so we can release the handle */
	if (!FUNC14(&dn->dn_handle->dnh_zrlock))
		FUNC15(&dn->dn_handle->dnh_zrlock);

	dn->dn_allocated_txg = 0;
	dn->dn_free_txg = 0;
	dn->dn_assigned_txg = 0;
	dn->dn_dirty_txg = 0;

	dn->dn_dirtyctx = 0;
	if (dn->dn_dirtyctx_firstset != NULL) {
		FUNC8(dn->dn_dirtyctx_firstset, 1);
		dn->dn_dirtyctx_firstset = NULL;
	}
	if (dn->dn_bonus != NULL) {
		FUNC12(&dn->dn_bonus->db_mtx);
		FUNC4(dn->dn_bonus);
		dn->dn_bonus = NULL;
	}
	dn->dn_zio = NULL;

	dn->dn_have_spill = B_FALSE;
	dn->dn_oldused = 0;
	dn->dn_oldflags = 0;
	dn->dn_olduid = 0;
	dn->dn_oldgid = 0;
	dn->dn_oldprojid = ZFS_DEFAULT_PROJID;
	dn->dn_newuid = 0;
	dn->dn_newgid = 0;
	dn->dn_newprojid = ZFS_DEFAULT_PROJID;
	dn->dn_id_flags = 0;

	FUNC6(&dn->dn_zfetch);
	FUNC7(dnode_cache, dn);
	FUNC3(sizeof (dnode_t), ARC_SPACE_DNODE);

	if (complete_os_eviction)
		FUNC5(os);
}