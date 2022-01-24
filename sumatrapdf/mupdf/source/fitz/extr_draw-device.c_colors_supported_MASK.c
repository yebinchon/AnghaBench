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
struct TYPE_3__ {int /*<<< orphan*/  colorspace; scalar_t__ seps; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(fz_context *ctx, fz_colorspace *cs, fz_pixmap *dest)
{
	/* Even if we support separations in the destination, if the color space has CMY or K as one of
	 * its colorants and we are in RGB or Gray we will want to do the tint transform */
	if (!FUNC3(ctx, dest->colorspace) && FUNC1(ctx, cs))
		return 0;

	/* If we have separations then we should support it */
	if (dest->seps)
		return 1;

	/* If our destination is CMYK and the source color space is only C, M, Y or K we support it
	 * even if we have no seps */
	if (FUNC3(ctx, dest->colorspace))
	{
		int i, n;
		if (FUNC2(ctx, cs))
			return 1;

		n = FUNC4(ctx, cs);
		for (i = 0; i < n; i++)
		{
			const char *name = FUNC0(ctx, cs, i);

			if (!name)
				return 0;
			if (!FUNC5(name, "All"))
				continue;
			if (!FUNC5(name, "Cyan"))
				continue;
			if (!FUNC5(name, "Magenta"))
				continue;
			if (!FUNC5(name, "Yellow"))
				continue;
			if (!FUNC5(name, "Black"))
				continue;
			if (!FUNC5(name, "None"))
				continue;
			return 0;
		}
		return 1;
	}

	return 0;
}