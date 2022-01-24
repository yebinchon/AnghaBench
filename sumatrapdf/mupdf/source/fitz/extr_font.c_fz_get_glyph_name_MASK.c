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
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ ft_face; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  scalar_t__ FT_Face ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int,char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC5(fz_context *ctx, fz_font *font, int glyph, char *buf, int size)
{
	FT_Face face = font->ft_face;
	if (face)
	{
		if (FUNC1(face))
		{
			int fterr = FUNC0(face, glyph, buf, size);
			if (fterr)
				FUNC4(ctx, "FT_Get_Glyph_Name(%s,%d): %s", font->name, glyph, FUNC2(fterr));
		}
		else
			FUNC3(buf, size, "%d", glyph);
	}
	else
	{
		FUNC3(buf, size, "%d", glyph);
	}
}