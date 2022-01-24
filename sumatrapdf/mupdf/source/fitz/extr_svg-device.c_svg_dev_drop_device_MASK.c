#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_fonts; int num_images; TYPE_2__* images; TYPE_2__* fonts; int /*<<< orphan*/  defs; int /*<<< orphan*/  defs_buffer; TYPE_2__* tiles; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  image; struct TYPE_4__* sentlist; int /*<<< orphan*/  font; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev)
{
	svg_device *sdev = (svg_device*)dev;
	int i;

	FUNC4(ctx, sdev->tiles);
	FUNC0(ctx, sdev->defs_buffer);
	FUNC3(ctx, sdev->defs);
	for (i = 0; i < sdev->num_fonts; i++)
	{
		FUNC1(ctx, sdev->fonts[i].font);
		FUNC4(ctx, sdev->fonts[i].sentlist);
	}
	FUNC4(ctx, sdev->fonts);
	for (i = 0; i < sdev->num_images; i++)
	{
		FUNC2(ctx, sdev->images[i].image);
	}
	FUNC4(ctx, sdev->images);
}