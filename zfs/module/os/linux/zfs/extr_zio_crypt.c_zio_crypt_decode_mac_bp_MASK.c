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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/ * zc_word; } ;
struct TYPE_9__ {TYPE_1__ blk_cksum; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMU_OT_OBJSET ; 
 int /*<<< orphan*/  ZIO_DATA_MAC_LEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC8(const blkptr_t *bp, uint8_t *mac)
{
	uint64_t val64;

	FUNC0(FUNC4(bp) || FUNC2(bp));

	/* for convenience, so callers don't need to check */
	if (FUNC1(bp) == DMU_OT_OBJSET) {
		FUNC7(mac, ZIO_DATA_MAC_LEN);
		return;
	}

	if (!FUNC3(bp)) {
		FUNC6(&bp->blk_cksum.zc_word[2], mac, sizeof (uint64_t));
		FUNC6(&bp->blk_cksum.zc_word[3], mac + sizeof (uint64_t),
		    sizeof (uint64_t));
	} else {
		val64 = FUNC5(bp->blk_cksum.zc_word[2]);
		FUNC6(&val64, mac, sizeof (uint64_t));

		val64 = FUNC5(bp->blk_cksum.zc_word[3]);
		FUNC6(&val64, mac + sizeof (uint64_t), sizeof (uint64_t));
	}
}