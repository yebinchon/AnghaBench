#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
typedef  void* uint32_t ;
struct TYPE_8__ {TYPE_1__* blk_dva; } ;
typedef  TYPE_2__ blkptr_t ;
struct TYPE_7__ {void** dva_word; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void**,int) ; 

void
FUNC7(blkptr_t *bp, uint8_t *salt, uint8_t *iv)
{
	uint64_t val64;
	uint32_t val32;

	FUNC0(FUNC1(bp));

	if (!FUNC3(bp)) {
		FUNC6(salt, &bp->blk_dva[2].dva_word[0], sizeof (uint64_t));
		FUNC6(iv, &bp->blk_dva[2].dva_word[1], sizeof (uint64_t));
		FUNC6(iv + sizeof (uint64_t), &val32, sizeof (uint32_t));
		FUNC2(bp, val32);
	} else {
		FUNC6(salt, &val64, sizeof (uint64_t));
		bp->blk_dva[2].dva_word[0] = FUNC5(val64);

		FUNC6(iv, &val64, sizeof (uint64_t));
		bp->blk_dva[2].dva_word[1] = FUNC5(val64);

		FUNC6(iv + sizeof (uint64_t), &val32, sizeof (uint32_t));
		FUNC2(bp, FUNC4(val32));
	}
}