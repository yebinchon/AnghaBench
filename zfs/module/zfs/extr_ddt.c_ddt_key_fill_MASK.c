#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ ddk_prop; int /*<<< orphan*/  ddk_cksum; } ;
typedef  TYPE_1__ ddt_key_t ;
struct TYPE_15__ {int /*<<< orphan*/  blk_cksum; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC10(ddt_key_t *ddk, const blkptr_t *bp)
{
	ddk->ddk_cksum = bp->blk_cksum;
	ddk->ddk_prop = 0;

	FUNC0(FUNC4(bp) || !FUNC5(bp));

	FUNC8(ddk, FUNC2(bp));
	FUNC9(ddk, FUNC3(bp));
	FUNC6(ddk, FUNC1(bp));
	FUNC7(ddk, FUNC5(bp));
}