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
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_CMD_FILL_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,float const*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm,
	fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
	fz_rect rect = FUNC1(ctx, path, NULL, ctm);
	FUNC0(
		ctx,
		dev,
		FZ_CMD_FILL_PATH,
		even_odd | FUNC2(color_params), /* flags */
		&rect,
		path, /* path */
		color,
		colorspace,
		&alpha, /* alpha */
		&ctm,
		NULL, /* stroke_state */
		NULL, /* private_data */
		0); /* private_data_len */
}