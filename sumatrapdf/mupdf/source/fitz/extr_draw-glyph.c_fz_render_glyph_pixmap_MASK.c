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
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float MAX_GLYPH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_infinite_irect ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 float FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

fz_pixmap *
FUNC6(fz_context *ctx, fz_font *font, int gid, fz_matrix *ctm, const fz_irect *scissor, int aa)
{
	fz_pixmap *val = NULL;
	unsigned char qe, qf;
	fz_matrix subpix_ctm;
	float size = FUNC4(ctx, ctm, &subpix_ctm, &qe, &qf);
	int is_ft_font = !!FUNC0(ctx, font);

	if (size <= MAX_GLYPH_SIZE)
	{
		scissor = &fz_infinite_irect;
	}
	else
	{
		if (is_ft_font)
			return NULL;
	}

	if (is_ft_font)
	{
		val = FUNC2(ctx, font, gid, subpix_ctm, aa);
	}
	else if (FUNC1(ctx, font))
	{
		val = FUNC3(ctx, font, gid, subpix_ctm, NULL, scissor, aa);
	}
	else
	{
		FUNC5(ctx, "assert: uninitialized font structure");
		val = NULL;
	}

	return val;
}