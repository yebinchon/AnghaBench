#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ft_face; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int
FUNC3(fz_context *ctx, fz_font *font, const char *glyphname)
{
	int glyph = 0;
	if (font->ft_face)
	{
		glyph = FUNC1(font->ft_face, glyphname);
		if (glyph == 0)
			glyph = FUNC0(font->ft_face, FUNC2(glyphname));
	}
	// TODO: type3 fonts (not needed for now)
	return glyph;
}