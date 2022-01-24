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
typedef  int /*<<< orphan*/  fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
#define  FZ_COLORSPACE_CMYK 130 
#define  FZ_COLORSPACE_GRAY 129 
#define  FZ_COLORSPACE_RGB 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_colorspace *FUNC7(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
	if (cs == NULL)
		return NULL;
	if (default_cs == NULL)
		return cs;

	switch (FUNC0(ctx, cs))
	{
	case FZ_COLORSPACE_GRAY:
		if (cs == FUNC5(ctx))
			return FUNC2(ctx, default_cs);
		break;
	case FZ_COLORSPACE_RGB:
		if (cs == FUNC6(ctx))
			return FUNC3(ctx, default_cs);
		break;
	case FZ_COLORSPACE_CMYK:
		if (cs == FUNC4(ctx))
			return FUNC1(ctx, default_cs);
		break;
	default:
		break;
	}
	return cs;
}