#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int a; int b; int c; int d; int e; int f; } ;
typedef  TYPE_2__ fz_matrix ;
struct TYPE_22__ {scalar_t__ fake_bold; scalar_t__ fake_italic; } ;
struct TYPE_24__ {int /*<<< orphan*/  name; TYPE_1__ flags; TYPE_7__* ft_face; } ;
typedef  TYPE_3__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_28__ {TYPE_6__* glyph; } ;
struct TYPE_27__ {int /*<<< orphan*/  outline; } ;
struct TYPE_26__ {int xx; int yx; int xy; int yy; } ;
struct TYPE_25__ {int x; int y; } ;
typedef  TYPE_4__ FT_Vector ;
typedef  TYPE_5__ FT_Matrix ;
typedef  TYPE_6__* FT_GlyphSlot ;
typedef  TYPE_7__* FT_Face ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 int FT_LOAD_NO_BITMAP ; 
 int FT_LOAD_NO_HINTING ; 
 int FT_LOAD_TARGET_MONO ; 
 scalar_t__ FUNC0 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FT_RENDER_MODE_MONO ; 
 int /*<<< orphan*/  FT_RENDER_MODE_NORMAL ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  SHEAR ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC9 (TYPE_2__) ; 
 TYPE_2__ FUNC10 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static FT_GlyphSlot
FUNC12(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, int aa)
{
	FT_Face face = font->ft_face;
	FT_Matrix m;
	FT_Vector v;
	FT_Error fterr;

	float strength = FUNC9(trm) * 0.02f;

	FUNC7(ctx, font, gid, &trm);

	if (font->flags.fake_italic)
		trm = FUNC10(trm, SHEAR, 0);

	FUNC8(ctx, FZ_LOCK_FREETYPE);

	if (aa == 0)
	{
		/* enable grid fitting for non-antialiased rendering */
		float scale = FUNC9(trm);
		m.xx = trm.a * 65536 / scale;
		m.yx = trm.b * 65536 / scale;
		m.xy = trm.c * 65536 / scale;
		m.yy = trm.d * 65536 / scale;
		v.x = 0;
		v.y = 0;

		fterr = FUNC4(face, 64 * scale, 64 * scale, 72, 72);
		if (fterr)
			FUNC11(ctx, "FT_Set_Char_Size(%s,%d,72): %s", font->name, (int)(64*scale), FUNC6(fterr));
		FUNC5(face, &m, &v);
		fterr = FUNC0(face, gid, FT_LOAD_NO_BITMAP | FT_LOAD_TARGET_MONO);
		if (fterr)
		{
			FUNC11(ctx, "FT_Load_Glyph(%s,%d,FT_LOAD_TARGET_MONO): %s", font->name, gid, FUNC6(fterr));
			goto retry_unhinted;
		}
	}
	else
	{
retry_unhinted:
		/*
		 * Freetype mutilates complex glyphs if they are loaded with
		 * FT_Set_Char_Size 1.0. It rounds the coordinates before applying
		 * transformation. To get more precision in freetype, we shift part of
		 * the scale in the matrix into FT_Set_Char_Size instead.
		 */

		/* Check for overflow; FreeType matrices use 16.16 fixed-point numbers */
		if (trm.a < -512 || trm.a > 512) return NULL;
		if (trm.b < -512 || trm.b > 512) return NULL;
		if (trm.c < -512 || trm.c > 512) return NULL;
		if (trm.d < -512 || trm.d > 512) return NULL;

		m.xx = trm.a * 64; /* should be 65536 */
		m.yx = trm.b * 64;
		m.xy = trm.c * 64;
		m.yy = trm.d * 64;
		v.x = trm.e * 64;
		v.y = trm.f * 64;

		fterr = FUNC4(face, 65536, 65536, 72, 72); /* should be 64, 64 */
		if (fterr)
			FUNC11(ctx, "FT_Set_Char_Size(%s,65536,72): %s", font->name, FUNC6(fterr));
		FUNC5(face, &m, &v);
		fterr = FUNC0(face, gid, FT_LOAD_NO_BITMAP | FT_LOAD_NO_HINTING);
		if (fterr)
		{
			FUNC11(ctx, "FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s", font->name, gid, FUNC6(fterr));
			return NULL;
		}
	}

	if (font->flags.fake_bold)
	{
		FUNC1(&face->glyph->outline, strength * 64);
		FUNC2(&face->glyph->outline, -strength * 32, -strength * 32);
	}

	fterr = FUNC3(face->glyph, aa > 0 ? FT_RENDER_MODE_NORMAL : FT_RENDER_MODE_MONO);
	if (fterr)
	{
		if (aa > 0)
			FUNC11(ctx, "FT_Render_Glyph(%s,%d,FT_RENDER_MODE_NORMAL): %s", font->name, gid, FUNC6(fterr));
		else
			FUNC11(ctx, "FT_Render_Glyph(%s,%d,FT_RENDER_MODE_MONO): %s", font->name, gid, FUNC6(fterr));
		return NULL;
	}
	return face->glyph;
}