#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_output *out, fz_colorspace *colorspace, const float *color, float alpha)
{
	int i, n;
	if (colorspace)
	{
		n = FUNC0(ctx, colorspace);
		FUNC2(ctx, out, " colorspace=\"%s\" color=\"", FUNC1(ctx, colorspace));
		for (i = 0; i < n; i++)
			FUNC2(ctx, out, "%s%g", i == 0 ? "" : " ", color[i]);
		FUNC2(ctx, out, "\"");
	}
	if (alpha < 1)
		FUNC2(ctx, out, " alpha=\"%g\"", alpha);
}