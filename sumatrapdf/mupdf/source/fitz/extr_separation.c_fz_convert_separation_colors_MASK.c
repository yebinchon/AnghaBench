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
struct TYPE_3__ {int num_separations; char** name; } ;
typedef  TYPE_1__ fz_separations ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int FZ_MAX_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 

void
FUNC9(fz_context *ctx,
	fz_colorspace *src_cs, const float *src_color,
	fz_separations *dst_seps, fz_colorspace *dst_cs, float *dst_color,
	fz_color_params color_params)
{
	int i, j, n, dc, ds, dn, pred;
	float remainders[FZ_MAX_COLORS];
	int remaining = 0;

	FUNC0(dst_cs && src_cs && dst_color && src_color);
	FUNC0(FUNC2(ctx, src_cs));

	dc = FUNC4(ctx, dst_cs);
	ds = (dst_seps == NULL ? 0: dst_seps->num_separations);
	dn = dc + ds;

	i = 0;
	if (!FUNC3(ctx, dst_cs))
		for (; i < dc; i++)
			dst_color[i] = 1;
	for (; i < dn; i++)
		dst_color[i] = 0;

	n = FUNC4(ctx, src_cs);
	pred = 0;
	for (i = 0; i < n; i++)
	{
		const char *name = FUNC1(ctx, src_cs, i);

		if (name == NULL)
			continue;
		if (i == 0 && !FUNC8(name, "All"))
		{
			/* This is only supposed to happen in separation spaces, not DeviceN */
			if (n != 1)
				FUNC6(ctx, "All found in DeviceN space");
			for (i = 0; i < dn; i++)
				dst_color[i] = src_color[0];
			break;
		}
		if (!FUNC8(name, "None"))
			continue;

		/* The most common case is that the colorant we match is the
		 * one after the one we matched before, so optimise for that. */
		for (j = pred; j < ds; j++)
		{
			const char *dname = dst_seps->name[j];
			if (dname && !FUNC8(name, dname))
				goto found_sep;
		}
		for (j = 0; j < pred; j++)
		{
			const char *dname = dst_seps->name[j];
			if (dname && !FUNC8(name, dname))
				goto found_sep;
		}
		for (j = 0; j < dc; j++)
		{
			const char *dname = FUNC1(ctx, dst_cs, j);
			if (dname && !FUNC8(name, dname))
				goto found_process;
		}
		if (0) {
found_sep:
			dst_color[j+dc] = src_color[i];
			pred = j+1;
		}
		else if (0)
		{
found_process:
			dst_color[j] += src_color[i];
		}
		else
		{
			if (remaining == 0)
			{
				FUNC7(remainders, 0, sizeof(float) * n);
				remaining = 1;
			}
			remainders[i] = src_color[i];
		}
	}

	if (remaining)
	{
		/* There were some spots that didn't copy over */
		float converted[FZ_MAX_COLORS];
		FUNC5(ctx, src_cs, remainders, dst_cs, converted, NULL, color_params);
		for (i = 0; i < dc; i++)
			dst_color[i] += converted[i];
	}
}