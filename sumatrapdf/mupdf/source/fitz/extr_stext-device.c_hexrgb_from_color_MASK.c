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

/* Variables and functions */
 int FUNC0 (float,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(fz_context *ctx, fz_colorspace *colorspace, const float *color)
{
	float rgb[3];
	FUNC1(ctx, colorspace, color, FUNC2(ctx), rgb, NULL, fz_default_color_params);
	return
		(FUNC0(rgb[0] * 255, 0, 255) << 16) |
		(FUNC0(rgb[1] * 255, 0, 255) << 8) |
		(FUNC0(rgb[2] * 255, 0, 255));
}