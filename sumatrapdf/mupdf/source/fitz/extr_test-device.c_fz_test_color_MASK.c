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
struct TYPE_3__ {int* is_color; int resolved; int /*<<< orphan*/ * passthrough; int /*<<< orphan*/  threshold; } ;
typedef  TYPE_1__ fz_test_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 scalar_t__ FZ_COLORSPACE_GRAY ; 
 int /*<<< orphan*/  FZ_ERROR_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,float const,float const,float const) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_test_device *t, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
	if (!*t->is_color && colorspace && FUNC0(ctx, colorspace) != FZ_COLORSPACE_GRAY)
	{
		if (colorspace == FUNC2(ctx))
		{
			if (FUNC4(t->threshold, color[0], color[1], color[2]))
			{
				*t->is_color = 2;
				t->resolved = 1;
				if (t->passthrough == NULL)
					FUNC3(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
			}
		}
		else
		{
			float rgb[3];
			FUNC1(ctx, colorspace, color, FUNC2(ctx), rgb, NULL, color_params);
			if (FUNC4(t->threshold, rgb[0], rgb[1], rgb[2]))
			{
				*t->is_color = 2;
				t->resolved = 1;
				if (t->passthrough == NULL)
				{
					FUNC3(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
				}
			}
		}
	}
}