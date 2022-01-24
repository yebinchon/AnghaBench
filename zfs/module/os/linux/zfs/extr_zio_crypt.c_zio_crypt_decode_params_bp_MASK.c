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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_1__* blk_dva; } ;
typedef  TYPE_2__ blkptr_t ;
struct TYPE_8__ {scalar_t__* dva_word; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ZIO_DATA_IV_LEN ; 
 int /*<<< orphan*/  ZIO_DATA_SALT_LEN ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(const blkptr_t *bp, uint8_t *salt, uint8_t *iv)
{
	uint64_t val64;
	uint32_t val32;

	FUNC0(FUNC3(bp));

	/* for convenience, so callers don't need to check */
	if (FUNC2(bp)) {
		FUNC8(salt, ZIO_DATA_SALT_LEN);
		FUNC8(iv, ZIO_DATA_IV_LEN);
		return;
	}

	if (!FUNC4(bp)) {
		FUNC7(&bp->blk_dva[2].dva_word[0], salt, sizeof (uint64_t));
		FUNC7(&bp->blk_dva[2].dva_word[1], iv, sizeof (uint64_t));

		val32 = (uint32_t)FUNC1(bp);
		FUNC7(&val32, iv + sizeof (uint64_t), sizeof (uint32_t));
	} else {
		val64 = FUNC6(bp->blk_dva[2].dva_word[0]);
		FUNC7(&val64, salt, sizeof (uint64_t));

		val64 = FUNC6(bp->blk_dva[2].dva_word[1]);
		FUNC7(&val64, iv, sizeof (uint64_t));

		val32 = FUNC5((uint32_t)FUNC1(bp));
		FUNC7(&val32, iv + sizeof (uint64_t), sizeof (uint32_t));
	}
}