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
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_5__ {scalar_t__ ft_stretch; } ;
struct TYPE_6__ {float* width_table; int width_count; float width_default; scalar_t__ ft_face; int /*<<< orphan*/  name; TYPE_1__ flags; } ;
typedef  TYPE_2__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {float units_per_EM; } ;
typedef  float FT_Fixed ;
typedef  TYPE_3__* FT_Face ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 scalar_t__ FT_Err_Invalid_Argument ; 
 scalar_t__ FUNC0 (scalar_t__,int,int,float*) ; 
 int FT_LOAD_IGNORE_TRANSFORM ; 
 int FT_LOAD_NO_HINTING ; 
 int FT_LOAD_NO_SCALE ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_matrix *
FUNC6(fz_context *ctx, fz_font *font, int gid, fz_matrix *trm)
{
	/* Fudge the font matrix to stretch the glyph if we've substituted the font. */
	if (font->flags.ft_stretch && font->width_table /* && font->wmode == 0 */)
	{
		FT_Error fterr;
		FT_Fixed adv = 0;
		float subw;
		float realw;

		FUNC2(ctx, FZ_LOCK_FREETYPE);
		fterr = FUNC0(font->ft_face, gid, FT_LOAD_NO_SCALE | FT_LOAD_NO_HINTING | FT_LOAD_IGNORE_TRANSFORM, &adv);
		FUNC4(ctx, FZ_LOCK_FREETYPE);
		if (fterr && fterr != FT_Err_Invalid_Argument)
			FUNC5(ctx, "FT_Get_Advance(%s,%d): %s", font->name, gid, FUNC1(fterr));

		realw = adv * 1000.0f / ((FT_Face)font->ft_face)->units_per_EM;
		if (gid < font->width_count)
			subw = font->width_table[gid];
		else
			subw = font->width_default;

		/* Sanity check scaling in case of broken metrics. */
		if (realw > 0 && subw > 0)
			*trm = FUNC3(*trm, subw / realw, 1);
	}

	return trm;
}