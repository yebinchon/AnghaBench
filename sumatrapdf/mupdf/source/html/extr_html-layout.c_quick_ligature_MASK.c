#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int glyph_count; TYPE_1__* glyph_info; int /*<<< orphan*/  font; } ;
typedef  TYPE_2__ string_walker ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  is_mono; } ;
struct TYPE_6__ {float codepoint; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC3(fz_context *ctx, string_walker *walker, unsigned int i)
{
	if (walker->glyph_info[i].codepoint == 'f' && i + 1 < walker->glyph_count && !FUNC1(walker->font)->is_mono)
	{
		if (walker->glyph_info[i+1].codepoint == 'f')
		{
			if (i + 2 < walker->glyph_count && walker->glyph_info[i+2].codepoint == 'i')
			{
				if (FUNC0(ctx, walker->font, 0xFB03))
					return FUNC2(ctx, walker, i, 2, 0xFB03);
			}
			if (i + 2 < walker->glyph_count && walker->glyph_info[i+2].codepoint == 'l')
			{
				if (FUNC0(ctx, walker->font, 0xFB04))
					return FUNC2(ctx, walker, i, 2, 0xFB04);
			}
			if (FUNC0(ctx, walker->font, 0xFB00))
				return FUNC2(ctx, walker, i, 1, 0xFB00);
		}
		if (walker->glyph_info[i+1].codepoint == 'i')
		{
			if (FUNC0(ctx, walker->font, 0xFB01))
				return FUNC2(ctx, walker, i, 1, 0xFB01);
		}
		if (walker->glyph_info[i+1].codepoint == 'l')
		{
			if (FUNC0(ctx, walker->font, 0xFB02))
				return FUNC2(ctx, walker, i, 1, 0xFB02);
		}
	}
	return walker->glyph_info[i].codepoint;
}