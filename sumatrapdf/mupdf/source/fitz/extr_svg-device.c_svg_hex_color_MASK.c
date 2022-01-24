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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC3(fz_context *ctx, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
	float rgb[3];
	int r, g, b;

	if (colorspace != FUNC2(ctx))
	{
		FUNC1(ctx, colorspace, color, FUNC2(ctx), rgb, NULL, color_params);
		color = rgb;
	}

	r = FUNC0(255 * color[0] + 0.5f, 0, 255);
	g = FUNC0(255 * color[1] + 0.5f, 0, 255);
	b = FUNC0(255 * color[2] + 0.5f, 0, 255);

	return (r << 16) | (g << 8) | b;
}