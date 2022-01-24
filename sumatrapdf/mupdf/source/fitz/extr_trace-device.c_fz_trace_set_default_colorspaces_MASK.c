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
struct TYPE_2__ {int /*<<< orphan*/  depth; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ fz_trace_device ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_device *dev_, fz_default_colorspaces *dcs)
{
	fz_trace_device *dev = (fz_trace_device*)dev_;
	fz_output *out = dev->out;
	FUNC5(ctx, out, dev->depth);
	FUNC6(ctx, out, "<set_default_colorspaces");
	FUNC6(ctx, out, " gray=\"%s\"", FUNC0(ctx, FUNC2(ctx, dcs)));
	FUNC6(ctx, out, " rgb=\"%s\"", FUNC0(ctx, FUNC4(ctx, dcs)));
	FUNC6(ctx, out, " cmyk=\"%s\"", FUNC0(ctx, FUNC1(ctx, dcs)));
	FUNC6(ctx, out, " oi=\"%s\"/>\n",FUNC0(ctx, FUNC3(ctx, dcs)));
}