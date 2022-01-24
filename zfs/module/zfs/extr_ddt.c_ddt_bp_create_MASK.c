#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
struct TYPE_24__ {int /*<<< orphan*/  ddp_phys_birth; } ;
typedef  TYPE_1__ ddt_phys_t ;
struct TYPE_25__ {int /*<<< orphan*/  ddk_cksum; } ;
typedef  TYPE_2__ ddt_key_t ;
struct TYPE_26__ {int /*<<< orphan*/  blk_cksum; } ;
typedef  TYPE_3__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  DMU_OT_DEDUP ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__ const*,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC16(enum zio_checksum checksum,
    const ddt_key_t *ddk, const ddt_phys_t *ddp, blkptr_t *bp)
{
	FUNC10(bp);

	if (ddp != NULL)
		FUNC15(ddp, bp, ddp->ddp_phys_birth);

	bp->blk_cksum = ddk->ddk_cksum;

	FUNC7(bp, FUNC13(ddk));
	FUNC8(bp, FUNC14(ddk));
	FUNC2(bp, FUNC11(ddk));
	FUNC3(bp, FUNC12(ddk));
	FUNC5(bp, 1);
	FUNC1(bp, checksum);
	FUNC9(bp, DMU_OT_DEDUP);
	FUNC6(bp, 0);
	FUNC4(bp, 1);
	FUNC0(bp, ZFS_HOST_BYTEORDER);
}