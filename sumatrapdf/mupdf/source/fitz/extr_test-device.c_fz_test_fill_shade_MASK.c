#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct shadearg {int /*<<< orphan*/  color_params; TYPE_2__* shade; TYPE_1__* dev; } ;
struct TYPE_7__ {int resolved; int options; int* is_color; int /*<<< orphan*/ * passthrough; } ;
typedef  TYPE_1__ fz_test_device ;
struct TYPE_8__ {int /*<<< orphan*/ * function; int /*<<< orphan*/  colorspace; scalar_t__ use_function; } ;
typedef  TYPE_2__ fz_shade ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 scalar_t__ FZ_COLORSPACE_GRAY ; 
 int /*<<< orphan*/  FZ_ERROR_ABORT ; 
 int FZ_TEST_OPT_SHADINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct shadearg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  prepare_vertex ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_device *dev_, fz_shade *shade, fz_matrix ctm, float alpha, fz_color_params color_params)
{
	fz_test_device *dev = (fz_test_device*)dev_;

	if (dev->resolved == 0)
	{
		if ((dev->options & FZ_TEST_OPT_SHADINGS) == 0)
		{
			if (FUNC0(ctx, shade->colorspace) != FZ_COLORSPACE_GRAY)
			{
				/* Don't test every pixel. Upgrade us from "black and white" to "probably color" */
				if (*dev->is_color == 0)
					*dev->is_color = 1;
				dev->resolved = 1;
				if (dev->passthrough == NULL)
					FUNC5(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
			}
		}
		else
		{
			if (shade->use_function)
			{
				int i;
				for (i = 0; i < 256; i++)
					FUNC4(ctx, dev, shade->colorspace, shade->function[i], color_params);
			}
			else
			{
				struct shadearg arg;
				arg.dev = dev;
				arg.shade = shade;
				arg.color_params = color_params;
				FUNC3(ctx, shade, ctm, FUNC1(ctx, dev_), prepare_vertex, NULL, &arg);
			}
		}
	}
	if (dev->passthrough)
		FUNC2(ctx, dev->passthrough, shade, ctm, alpha, color_params);
}