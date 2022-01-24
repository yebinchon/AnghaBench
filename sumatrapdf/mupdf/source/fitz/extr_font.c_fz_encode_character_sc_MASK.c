#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ft_face; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char*) ; 
 int UCDN_GENERAL_CATEGORY_LL ; 
 int UCDN_GENERAL_CATEGORY_LT ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int) ; 

int
FUNC5(fz_context *ctx, fz_font *font, int unicode)
{
	if (font->ft_face)
	{
		int cat = FUNC4(unicode);
		if (cat == UCDN_GENERAL_CATEGORY_LL || cat == UCDN_GENERAL_CATEGORY_LT)
		{
			int glyph;
			const char *name;
			char buf[20];

			name = FUNC2(unicode);
			if (name)
			{
				glyph = FUNC0(font->ft_face, (char*)name);
				if (glyph > 0)
					return glyph;
			}

			FUNC3(buf, "uni%04X.sc", unicode);
			glyph = FUNC0(font->ft_face, buf);
			if (glyph > 0)
				return glyph;
		}
	}
	return FUNC1(ctx, font, unicode);
}