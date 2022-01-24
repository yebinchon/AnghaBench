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
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
struct TYPE_3__ {scalar_t__ a; float r; float g; float b; } ;
typedef  TYPE_1__ fz_css_color ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(fz_context *ctx, fz_device *dev, fz_matrix ctm, float page_top, fz_css_color color, float x0, float y0, float x1, float y1)
{
	if (color.a > 0)
	{
		float rgb[3];

		fz_path *path = FUNC6(ctx);

		FUNC5(ctx, path, x0, y0 - page_top);
		FUNC4(ctx, path, x1, y0 - page_top);
		FUNC4(ctx, path, x1, y1 - page_top);
		FUNC4(ctx, path, x0, y1 - page_top);
		FUNC0(ctx, path);

		rgb[0] = color.r / 255.0f;
		rgb[1] = color.g / 255.0f;
		rgb[2] = color.b / 255.0f;

		FUNC3(ctx, dev, path, 0, ctm, FUNC1(ctx), rgb, color.a / 255.0f, fz_default_color_params);

		FUNC2(ctx, path);
	}
}