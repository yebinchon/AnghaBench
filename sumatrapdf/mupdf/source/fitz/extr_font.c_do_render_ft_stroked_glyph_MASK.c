#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {float linewidth; scalar_t__ linejoin; scalar_t__ start_cap; int miterlimit; } ;
typedef  TYPE_3__ fz_stroke_state ;
struct TYPE_31__ {int a; int b; int c; int d; int e; int f; } ;
typedef  TYPE_4__ fz_matrix ;
struct TYPE_28__ {scalar_t__ fake_italic; } ;
struct TYPE_32__ {int /*<<< orphan*/  name; TYPE_1__ flags; TYPE_9__* ft_face; } ;
typedef  TYPE_5__ fz_font ;
struct TYPE_33__ {TYPE_2__* font; } ;
typedef  TYPE_6__ fz_context ;
struct TYPE_36__ {int /*<<< orphan*/  glyph; } ;
struct TYPE_35__ {int xx; int yx; int xy; int yy; } ;
struct TYPE_34__ {int x; int y; } ;
struct TYPE_29__ {int /*<<< orphan*/  ftlib; } ;
typedef  TYPE_7__ FT_Vector ;
typedef  int /*<<< orphan*/  FT_Stroker_LineJoin ;
typedef  int /*<<< orphan*/  FT_Stroker_LineCap ;
typedef  int /*<<< orphan*/  FT_Stroker ;
typedef  TYPE_8__ FT_Matrix ;
typedef  int /*<<< orphan*/ * FT_Glyph ;
typedef  TYPE_9__* FT_Face ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FT_LOAD_NO_BITMAP ; 
 int FT_LOAD_NO_HINTING ; 
 scalar_t__ FUNC4 (TYPE_9__*,int,int) ; 
 int /*<<< orphan*/  FT_RENDER_MODE_MONO ; 
 int /*<<< orphan*/  FT_RENDER_MODE_NORMAL ; 
 int /*<<< orphan*/  FT_STROKER_LINECAP_BUTT ; 
 int /*<<< orphan*/  FT_STROKER_LINECAP_ROUND ; 
 int /*<<< orphan*/  FT_STROKER_LINECAP_SQUARE ; 
 int /*<<< orphan*/  FT_STROKER_LINEJOIN_BEVEL ; 
 int /*<<< orphan*/  FT_STROKER_LINEJOIN_MITER_FIXED ; 
 int /*<<< orphan*/  FT_STROKER_LINEJOIN_MITER_VARIABLE ; 
 int /*<<< orphan*/  FT_STROKER_LINEJOIN_ROUND ; 
 scalar_t__ FUNC5 (TYPE_9__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FZ_LINECAP_BUTT ; 
 scalar_t__ FZ_LINECAP_ROUND ; 
 scalar_t__ FZ_LINECAP_SQUARE ; 
 scalar_t__ FZ_LINECAP_TRIANGLE ; 
 scalar_t__ FZ_LINEJOIN_BEVEL ; 
 scalar_t__ FZ_LINEJOIN_MITER ; 
 scalar_t__ FZ_LINEJOIN_ROUND ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  SHEAR ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_5__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 float FUNC13 (TYPE_4__) ; 
 TYPE_4__ FUNC14 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static FT_Glyph
FUNC16(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, fz_matrix ctm, const fz_stroke_state *state, int aa)
{
	FT_Face face = font->ft_face;
	float expansion = FUNC13(ctm);
	int linewidth = state->linewidth * expansion * 64 / 2;
	FT_Matrix m;
	FT_Vector v;
	FT_Error fterr;
	FT_Stroker stroker;
	FT_Glyph glyph;
	FT_Stroker_LineJoin line_join;
	FT_Stroker_LineCap line_cap;

	FUNC11(ctx, font, gid, &trm);

	if (font->flags.fake_italic)
		trm = FUNC14(trm, SHEAR, 0);

	m.xx = trm.a * 64; /* should be 65536 */
	m.yx = trm.b * 64;
	m.xy = trm.c * 64;
	m.yy = trm.d * 64;
	v.x = trm.e * 64;
	v.y = trm.f * 64;

	FUNC12(ctx, FZ_LOCK_FREETYPE);
	fterr = FUNC5(face, 65536, 65536, 72, 72); /* should be 64, 64 */
	if (fterr)
	{
		FUNC15(ctx, "FT_Set_Char_Size(%s,65536,72): %s", font->name, FUNC10(fterr));
		return NULL;
	}

	FUNC6(face, &m, &v);

	fterr = FUNC4(face, gid, FT_LOAD_NO_BITMAP | FT_LOAD_NO_HINTING);
	if (fterr)
	{
		FUNC15(ctx, "FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s", font->name, gid, FUNC10(fterr));
		return NULL;
	}

	fterr = FUNC8(ctx->font->ftlib, &stroker);
	if (fterr)
	{
		FUNC15(ctx, "FT_Stroker_New(): %s", FUNC10(fterr));
		return NULL;
	}

	line_join =
		state->linejoin == FZ_LINEJOIN_MITER ? FT_STROKER_LINEJOIN_MITER_FIXED :
		state->linejoin == FZ_LINEJOIN_ROUND ? FT_STROKER_LINEJOIN_ROUND :
		state->linejoin == FZ_LINEJOIN_BEVEL ? FT_STROKER_LINEJOIN_BEVEL :
		FT_STROKER_LINEJOIN_MITER_VARIABLE;
	line_cap =
		state->start_cap == FZ_LINECAP_BUTT ? FT_STROKER_LINECAP_BUTT :
		state->start_cap == FZ_LINECAP_ROUND ? FT_STROKER_LINECAP_ROUND :
		state->start_cap == FZ_LINECAP_SQUARE ? FT_STROKER_LINECAP_SQUARE :
		state->start_cap == FZ_LINECAP_TRIANGLE ? FT_STROKER_LINECAP_BUTT :
		FT_STROKER_LINECAP_BUTT;

	FUNC9(stroker, linewidth, line_cap, line_join, state->miterlimit * 65536);

	fterr = FUNC1(face->glyph, &glyph);
	if (fterr)
	{
		FUNC15(ctx, "FT_Get_Glyph(): %s", FUNC10(fterr));
		FUNC7(stroker);
		return NULL;
	}

	fterr = FUNC2(&glyph, stroker, 1);
	if (fterr)
	{
		FUNC15(ctx, "FT_Glyph_Stroke(): %s", FUNC10(fterr));
		FUNC0(glyph);
		FUNC7(stroker);
		return NULL;
	}

	FUNC7(stroker);

	fterr = FUNC3(&glyph, aa > 0 ? FT_RENDER_MODE_NORMAL : FT_RENDER_MODE_MONO, 0, 1);
	if (fterr)
	{
		FUNC15(ctx, "FT_Glyph_To_Bitmap(): %s", FUNC10(fterr));
		FUNC0(glyph);
		return NULL;
	}
	return glyph;
}