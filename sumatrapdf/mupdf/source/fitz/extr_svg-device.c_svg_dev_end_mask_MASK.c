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
struct TYPE_7__ {int /*<<< orphan*/ * out; } ;
typedef  TYPE_2__ svg_device ;
typedef  int /*<<< orphan*/  fz_output ;
struct TYPE_8__ {int container_len; TYPE_1__* container; } ;
typedef  TYPE_3__ fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int user; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out = sdev->out;
	int mask = 0;

	if (dev->container_len > 0)
		mask = dev->container[dev->container_len-1].user;

	FUNC1(ctx, out, "\"/>\n</mask>\n");
	out = FUNC0(ctx, sdev);
	FUNC1(ctx, out, "<g mask=\"url(#ma%d)\">\n", mask);
}