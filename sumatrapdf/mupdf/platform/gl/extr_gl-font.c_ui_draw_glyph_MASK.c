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
struct glyph {float w; float h; float lsb; float top; scalar_t__ t; scalar_t__ s; } ;
typedef  int /*<<< orphan*/  fz_font ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 float FUNC0 (float) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 float g_cache_h ; 
 float g_cache_w ; 
 int /*<<< orphan*/  FUNC2 (float,float) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 struct glyph* FUNC4 (int /*<<< orphan*/ *,float,int,float*,float*) ; 

__attribute__((used)) static float FUNC5(fz_font *font, float size, int gid, float x, float y)
{
	struct glyph *glyph;
	float s0, t0, s1, t1, xc, yc;

	glyph = FUNC4(font, size, gid, &x, &y);
	if (!glyph)
		return 0;

	s0 = (float) glyph->s / g_cache_w;
	t0 = (float) glyph->t / g_cache_h;
	s1 = (float) (glyph->s + glyph->w) / g_cache_w;
	t1 = (float) (glyph->t + glyph->h) / g_cache_h;
	xc = FUNC0(x) + glyph->lsb;
	yc = FUNC0(y) - glyph->top + glyph->h;

	FUNC2(s0, t0); FUNC3(xc, yc - glyph->h);
	FUNC2(s1, t0); FUNC3(xc + glyph->w, yc - glyph->h);
	FUNC2(s1, t1); FUNC3(xc + glyph->w, yc);
	FUNC2(s0, t1); FUNC3(xc, yc);

	return FUNC1(ctx, font, gid, 0) * size;
}