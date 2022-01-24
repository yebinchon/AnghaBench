#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  vcsa_txg; int /*<<< orphan*/  vcsa_dest_dva; int /*<<< orphan*/ * vcsa_spa; } ;
typedef  TYPE_4__ vdev_copy_segment_arg_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {TYPE_3__ member_0; } ;
struct TYPE_16__ {TYPE_2__ member_0; } ;
struct TYPE_20__ {int /*<<< orphan*/ * blk_dva; TYPE_1__ member_0; } ;
typedef  TYPE_5__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_INITIAL ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_OFF ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC15(void *arg, uint64_t start, uint64_t size)
{
	vdev_copy_segment_arg_t *vcsa = arg;
	spa_t *spa = vcsa->vcsa_spa;
	blkptr_t bp = { { { {0} } } };

	FUNC0(&bp, TXG_INITIAL, TXG_INITIAL);
	FUNC6(&bp, size);
	FUNC7(&bp, size);
	FUNC3(&bp, ZIO_COMPRESS_OFF);
	FUNC2(&bp, ZIO_CHECKSUM_OFF);
	FUNC8(&bp, DMU_OT_NONE);
	FUNC5(&bp, 0);
	FUNC4(&bp, 0);
	FUNC1(&bp, ZFS_HOST_BYTEORDER);

	FUNC13(&bp.blk_dva[0], FUNC10(vcsa->vcsa_dest_dva));
	FUNC12(&bp.blk_dva[0],
	    FUNC9(vcsa->vcsa_dest_dva) + start);
	FUNC11(&bp.blk_dva[0], size);

	FUNC14(spa, vcsa->vcsa_txg, &bp);
}