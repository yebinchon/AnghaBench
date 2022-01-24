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
typedef  int /*<<< orphan*/  fz_text ;
struct TYPE_3__ {scalar_t__ resolved; scalar_t__ passthrough; } ;
typedef  TYPE_1__ fz_test_device ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,float const*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_device *dev_, const fz_text *text, fz_matrix ctm,
	fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
	fz_test_device *dev = (fz_test_device*)dev_;

	if (dev->resolved == 0 && alpha != 0.0f)
		FUNC1(ctx, dev, colorspace, color, color_params);
	if (dev->passthrough)
		FUNC0(ctx, dev->passthrough, text, ctm, colorspace, color, alpha, color_params);
}