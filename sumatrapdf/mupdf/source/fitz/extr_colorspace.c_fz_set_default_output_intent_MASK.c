#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  cmyk; int /*<<< orphan*/ * oi; int /*<<< orphan*/  rgb; int /*<<< orphan*/  gray; } ;
typedef  TYPE_1__ fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int type; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ fz_colorspace ;

/* Variables and functions */
#define  FZ_COLORSPACE_CMYK 130 
#define  FZ_COLORSPACE_GRAY 129 
#define  FZ_COLORSPACE_RGB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC9(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
	FUNC3(ctx, default_cs->oi);
	default_cs->oi = NULL;

	/* FIXME: Why do we set DefaultXXX along with the output intent?! */
	switch (cs->type)
	{
	default:
		FUNC8(ctx, "Ignoring incompatible output intent: %s.", cs->name);
		break;
	case FZ_COLORSPACE_GRAY:
		default_cs->oi = FUNC4(ctx, cs);
		if (default_cs->gray == FUNC1(ctx))
			FUNC6(ctx, default_cs, cs);
		break;
	case FZ_COLORSPACE_RGB:
		default_cs->oi = FUNC4(ctx, cs);
		if (default_cs->rgb == FUNC2(ctx))
			FUNC7(ctx, default_cs, cs);
		break;
	case FZ_COLORSPACE_CMYK:
		default_cs->oi = FUNC4(ctx, cs);
		if (default_cs->cmyk == FUNC0(ctx))
			FUNC5(ctx, default_cs, cs);
		break;
	}
}