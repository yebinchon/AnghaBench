#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ shaper_handle; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ *,scalar_t__) ;} ;
struct TYPE_9__ {TYPE_1__ shaper_data; struct TYPE_9__* advance_cache; struct TYPE_9__* width_table; struct TYPE_9__* bbox_table; int /*<<< orphan*/  buffer; struct TYPE_9__** encoding_cache; int /*<<< orphan*/  name; scalar_t__ ft_face; struct TYPE_9__* t3flags; struct TYPE_9__* t3widths; struct TYPE_9__* t3lists; struct TYPE_9__* t3procs; int /*<<< orphan*/  refs; } ;
typedef  TYPE_2__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  FT_Face ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FZ_LOCK_FREETYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC12(fz_context *ctx, fz_font *font)
{
	int fterr;
	int i;

	if (!FUNC6(ctx, font, &font->refs))
		return;

	if (font->t3lists)
	{
		FUNC1(ctx, font);
		for (i = 0; i < 256; i++)
			FUNC4(ctx, font->t3lists[i]);
		FUNC7(ctx, font->t3procs);
		FUNC7(ctx, font->t3lists);
		FUNC7(ctx, font->t3widths);
		FUNC7(ctx, font->t3flags);
	}

	if (font->ft_face)
	{
		FUNC8(ctx, FZ_LOCK_FREETYPE);
		fterr = FUNC0((FT_Face)font->ft_face);
		FUNC9(ctx, FZ_LOCK_FREETYPE);
		if (fterr)
			FUNC10(ctx, "FT_Done_Face(%s): %s", font->name, FUNC2(fterr));
		FUNC5(ctx);
	}

	for (i = 0; i < 256; ++i)
		FUNC7(ctx, font->encoding_cache[i]);

	FUNC3(ctx, font->buffer);
	FUNC7(ctx, font->bbox_table);
	FUNC7(ctx, font->width_table);
	FUNC7(ctx, font->advance_cache);
	if (font->shaper_data.destroy && font->shaper_data.shaper_handle)
	{
		font->shaper_data.destroy(ctx, font->shaper_data.shaper_handle);
	}
	FUNC7(ctx, font);
}