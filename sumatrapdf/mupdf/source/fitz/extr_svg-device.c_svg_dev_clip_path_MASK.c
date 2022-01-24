#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm, fz_rect scissor)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out;

	int num = sdev->id++;

	out = FUNC2(ctx, sdev);
	FUNC1(ctx, out, "<clipPath id=\"cp%d\">\n", num);
	FUNC1(ctx, out, "<path");
	FUNC3(ctx, sdev, ctm);
	FUNC4(ctx, sdev, path);
	if (even_odd)
		FUNC1(ctx, out, " fill-rule=\"evenodd\"");
	FUNC1(ctx, out, "/>\n</clipPath>\n");
	out = FUNC0(ctx, sdev);
	FUNC1(ctx, out, "<g clip-path=\"url(#cp%d)\">\n", num);
}