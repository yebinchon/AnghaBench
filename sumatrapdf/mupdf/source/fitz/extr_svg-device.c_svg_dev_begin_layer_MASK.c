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
struct TYPE_2__ {int /*<<< orphan*/  layers; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, fz_device *dev, const char *name)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out = sdev->out;

	sdev->layers++;
	FUNC0(ctx, out, "<g id=\"Layer-%d\" data-name=\"%s\">\n", sdev->layers, name);
}