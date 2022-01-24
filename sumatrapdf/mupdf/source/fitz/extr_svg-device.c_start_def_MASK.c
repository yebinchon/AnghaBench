#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int def_count; int /*<<< orphan*/ * out; int /*<<< orphan*/ * defs; int /*<<< orphan*/ * defs_buffer; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_output *
FUNC2(fz_context *ctx, svg_device *sdev)
{
	sdev->def_count++;
	if (sdev->def_count == 2)
	{
		if (sdev->defs == NULL)
		{
			if (sdev->defs_buffer == NULL)
				sdev->defs_buffer = FUNC0(ctx, 1024);
			sdev->defs = FUNC1(ctx, sdev->defs_buffer);
		}
		sdev->out = sdev->defs;
	}
	return sdev->out;
}