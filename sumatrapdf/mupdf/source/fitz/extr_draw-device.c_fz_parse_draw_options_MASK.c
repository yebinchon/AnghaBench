#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x_resolution; int y_resolution; void* height; void* width; void* text; void* graphics; scalar_t__ alpha; void* colorspace; void* rotate; } ;
typedef  TYPE_1__ fz_draw_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,char*,char const**) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (char const*) ; 

fz_draw_options *
FUNC11(fz_context *ctx, fz_draw_options *opts, const char *args)
{
	const char *val;

	FUNC9(opts, 0, sizeof *opts);

	opts->x_resolution = 96;
	opts->y_resolution = 96;
	opts->rotate = 0;
	opts->width = 0;
	opts->height = 0;
	opts->colorspace = FUNC4(ctx);
	opts->alpha = 0;
	opts->graphics = FUNC0(ctx);
	opts->text = FUNC7(ctx);

	if (FUNC5(ctx, args, "rotate", &val))
		opts->rotate = FUNC1(val);
	if (FUNC5(ctx, args, "resolution", &val))
		opts->x_resolution = opts->y_resolution = FUNC1(val);
	if (FUNC5(ctx, args, "x-resolution", &val))
		opts->x_resolution = FUNC1(val);
	if (FUNC5(ctx, args, "y-resolution", &val))
		opts->y_resolution = FUNC1(val);
	if (FUNC5(ctx, args, "width", &val))
		opts->width = FUNC1(val);
	if (FUNC5(ctx, args, "height", &val))
		opts->height = FUNC1(val);
	if (FUNC5(ctx, args, "colorspace", &val))
	{
		if (FUNC6(val, "gray") || FUNC6(val, "grey") || FUNC6(val, "mono"))
			opts->colorspace = FUNC3(ctx);
		else if (FUNC6(val, "rgb"))
			opts->colorspace = FUNC4(ctx);
		else if (FUNC6(val, "cmyk"))
			opts->colorspace = FUNC2(ctx);
		else
			FUNC8(ctx, FZ_ERROR_GENERIC, "unknown colorspace in options");
	}
	if (FUNC5(ctx, args, "alpha", &val))
		opts->alpha = FUNC6(val, "yes");
	if (FUNC5(ctx, args, "graphics", &val))
		opts->text = opts->graphics = FUNC10(val);
	if (FUNC5(ctx, args, "text", &val))
		opts->text = FUNC10(val);

	/* Sanity check values */
	if (opts->x_resolution <= 0) opts->x_resolution = 96;
	if (opts->y_resolution <= 0) opts->y_resolution = 96;
	if (opts->width < 0) opts->width = 0;
	if (opts->height < 0) opts->height = 0;

	return opts;
}