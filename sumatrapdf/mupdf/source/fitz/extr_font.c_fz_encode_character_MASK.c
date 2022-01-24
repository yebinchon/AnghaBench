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
struct TYPE_3__ {int** encoding_cache; scalar_t__ ft_face; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint16_t ; 

int
FUNC2(fz_context *ctx, fz_font *font, int ucs)
{
	if (font->ft_face)
	{
		if (ucs >= 0 && ucs < 0x10000)
		{
			int pg = ucs >> 8;
			int ix = ucs & 0xFF;
			if (!font->encoding_cache[pg])
			{
				int i;
				font->encoding_cache[pg] = FUNC1(ctx, 256, uint16_t);
				for (i = 0; i < 256; ++i)
					font->encoding_cache[pg][i] = FUNC0(font->ft_face, (pg << 8) + i);
			}
			return font->encoding_cache[pg][ix];
		}
		return FUNC0(font->ft_face, ucs);
	}
	return ucs;
}