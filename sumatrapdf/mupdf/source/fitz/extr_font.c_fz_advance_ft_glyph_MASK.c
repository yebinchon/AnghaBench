#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ft_stretch; } ;
struct TYPE_6__ {float* width_table; int width_count; float width_default; scalar_t__ ft_face; int /*<<< orphan*/  name; TYPE_1__ flags; } ;
typedef  TYPE_2__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {float units_per_EM; } ;
typedef  scalar_t__ FT_Fixed ;
typedef  TYPE_3__* FT_Face ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 scalar_t__ FT_Err_Invalid_Argument ; 
 scalar_t__ FUNC0 (scalar_t__,int,int,scalar_t__*) ; 
 int FT_LOAD_IGNORE_TRANSFORM ; 
 int FT_LOAD_NO_HINTING ; 
 int FT_LOAD_NO_SCALE ; 
 int FT_LOAD_VERTICAL_LAYOUT ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float
FUNC5(fz_context *ctx, fz_font *font, int gid, int wmode)
{
	FT_Error fterr;
	FT_Fixed adv = 0;
	int mask;

	/* PDF and substitute font widths. */
	if (font->flags.ft_stretch)
	{
		if (font->width_table)
		{
			if (gid < font->width_count)
				return font->width_table[gid] / 1000.0f;
			return font->width_default / 1000.0f;
		}
	}

	mask = FT_LOAD_NO_SCALE | FT_LOAD_NO_HINTING | FT_LOAD_IGNORE_TRANSFORM;
	if (wmode)
		mask |= FT_LOAD_VERTICAL_LAYOUT;
	FUNC2(ctx, FZ_LOCK_FREETYPE);
	fterr = FUNC0(font->ft_face, gid, mask, &adv);
	FUNC3(ctx, FZ_LOCK_FREETYPE);
	if (fterr && fterr != FT_Err_Invalid_Argument)
	{
		FUNC4(ctx, "FT_Get_Advance(%s,%d): %s", font->name, gid, FUNC1(fterr));
		if (font->width_table)
		{
			if (gid < font->width_count)
				return font->width_table[gid] / 1000.0f;
			return font->width_default / 1000.0f;
		}
	}
	return (float) adv / ((FT_Face)font->ft_face)->units_per_EM;
}