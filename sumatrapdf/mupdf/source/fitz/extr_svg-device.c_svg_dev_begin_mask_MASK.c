#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ svg_device ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_output ;
struct TYPE_8__ {int container_len; TYPE_1__* container; } ;
typedef  TYPE_3__ fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;
struct TYPE_6__ {int user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev, fz_rect bbox, int luminosity, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out;
	int mask = sdev->id++;

	out = FUNC1(ctx, sdev);
	FUNC0(ctx, out, "<mask id=\"ma%d\">\n", mask);

	if (dev->container_len > 0)
		dev->container[dev->container_len-1].user = mask;
}