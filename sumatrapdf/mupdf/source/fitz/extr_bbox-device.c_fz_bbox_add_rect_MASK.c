#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {int top; int /*<<< orphan*/ * stack; int /*<<< orphan*/ * result; int /*<<< orphan*/  ignore; } ;
typedef  TYPE_1__ fz_bbox_device ;

/* Variables and functions */
 int STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev, fz_rect rect, int clip)
{
	fz_bbox_device *bdev = (fz_bbox_device*)dev;

	if (0 < bdev->top && bdev->top <= STACK_SIZE)
	{
		rect = FUNC0(rect, bdev->stack[bdev->top-1]);
	}
	if (!clip && bdev->top <= STACK_SIZE && !bdev->ignore)
	{
		*bdev->result = FUNC1(*bdev->result, rect);
	}
	if (clip && ++bdev->top <= STACK_SIZE)
	{
		bdev->stack[bdev->top-1] = rect;
	}
}