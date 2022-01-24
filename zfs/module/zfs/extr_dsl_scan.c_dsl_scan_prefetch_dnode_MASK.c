#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int zb_blkid; scalar_t__ zb_level; } ;
typedef  TYPE_1__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  scan_prefetch_ctx_t ;
typedef  int /*<<< orphan*/  dsl_scan_t ;
struct TYPE_9__ {int dn_nblkptr; int dn_flags; int /*<<< orphan*/ * dn_blkptr; } ;
typedef  TYPE_2__ dnode_phys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int DMU_SPILL_BLKID ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(dsl_scan_t *scn, dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
	int i;
	zbookmark_phys_t zb;
	scan_prefetch_ctx_t *spc;

	if (dnp->dn_nblkptr == 0 && !(dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR))
		return;

	FUNC2(&zb, objset, object, 0, 0);

	spc = FUNC4(scn, dnp, FTAG);

	for (i = 0; i < dnp->dn_nblkptr; i++) {
		zb.zb_level = FUNC0(&dnp->dn_blkptr[i]);
		zb.zb_blkid = i;
		FUNC3(spc, &dnp->dn_blkptr[i], &zb);
	}

	if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
		zb.zb_level = 0;
		zb.zb_blkid = DMU_SPILL_BLKID;
		FUNC3(spc, FUNC1(dnp), &zb);
	}

	FUNC5(spc, FTAG);
}