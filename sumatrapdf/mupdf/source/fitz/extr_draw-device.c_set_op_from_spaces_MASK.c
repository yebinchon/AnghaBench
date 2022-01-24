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
struct TYPE_3__ {int n; int alpha; int s; int /*<<< orphan*/  seps; int /*<<< orphan*/ * colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

__attribute__((used)) static fz_overprint *
FUNC6(fz_context *ctx, fz_overprint *op, const fz_pixmap *dest, fz_colorspace *src, int opm)
{
	int dn, sn, i, j, dc;

	if (!op)
		return NULL;

	if (!FUNC1(ctx, src) || !FUNC1(ctx, dest->colorspace))
		return NULL;

	sn = FUNC2(ctx, src);
	dn = dest->n - dest->alpha;
	dc = dn - dest->s;

	/* If a source colorant is not mentioned in the destination
	 * colorants (either process or spots), then it will be mapped
	 * to process colorants. In this case, the process colorants
	 * can never be protected.
	 */
	for (j = 0; j < sn; j++)
	{
		/* Run through the colorants looking for one that isn't mentioned.
		 * i.e. continue if we we find one, break if not. */
		const char *sname = FUNC0(ctx, src, j);
		if (!sname)
			break;
		if (!FUNC5(sname, "All") || !FUNC5(sname, "None"))
			continue;
		for (i = 0; i < dc; i++)
		{
			const char *name = FUNC0(ctx, dest->colorspace, i);
			if (!name)
				continue;
			if (!FUNC5(name, sname))
				break;
		}
		if (i != dc)
			continue;
		for (; i < dn; i++)
		{
			const char *name = FUNC3(ctx, dest->seps, i - dc);
			if (!name)
				continue;
			if (!FUNC5(name, sname))
				break;
		}
		if (i == dn)
		{
			/* This source colorant wasn't mentioned */
			break;
		}
	}
	if (j == sn)
	{
		/* We did not find any source colorants that weren't mentioned, so
		 * process colorants might not be touched... */
		for (i = 0; i < dc; i++)
		{
			const char *name = FUNC0(ctx, dest->colorspace, i);

			for (j = 0; j < sn; j++)
			{
				const char *sname = FUNC0(ctx, src, j);
				if (!name || !sname)
					continue;
				if (!FUNC5(name, sname))
					break;
				if (!FUNC5(sname, "All"))
					break;
			}
			if (j == sn)
				FUNC4(op, i);
		}
	}
	for (i = dc; i < dn; i++)
	{
		const char *name = FUNC3(ctx, dest->seps, i - dc);

		for (j = 0; j < sn; j++)
		{
			const char *sname = FUNC0(ctx, src, j);
			if (!name || !sname)
				continue;
			if (!FUNC5(name, sname))
				break;
			if (!FUNC5(sname, "All"))
				break;
		}
		if (j == sn)
			FUNC4(op, i);
	}

	return op;
}