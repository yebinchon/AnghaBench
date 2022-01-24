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

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(unsigned char *rd, unsigned char *gd, unsigned char *bd, int rb, int gb, int bb, int rs, int gs, int bs)
{
	int minb, maxb;
	int mins, maxs;
	int y;
	int scale;
	int r, g, b;

	minb = FUNC2(rb, FUNC2(gb, bb));
	maxb = FUNC1(rb, FUNC1(gb, bb));
	if (minb == maxb)
	{
		/* backdrop has zero saturation, avoid divide by 0 */
		gb = FUNC0(gb, 0, 255);
		*rd = gb;
		*gd = gb;
		*bd = gb;
		return;
	}

	mins = FUNC2(rs, FUNC2(gs, bs));
	maxs = FUNC1(rs, FUNC1(gs, bs));

	scale = ((maxs - mins) << 16) / (maxb - minb);
	y = (rb * 77 + gb * 151 + bb * 28 + 0x80) >> 8;
	r = y + ((((rb - y) * scale) + 0x8000) >> 16);
	g = y + ((((gb - y) * scale) + 0x8000) >> 16);
	b = y + ((((bb - y) * scale) + 0x8000) >> 16);

	if ((r | g | b) & 0x100)
	{
		int scalemin, scalemax;
		int min, max;

		min = FUNC2(r, FUNC2(g, b));
		max = FUNC1(r, FUNC1(g, b));

		if (min < 0)
			scalemin = (y << 16) / (y - min);
		else
			scalemin = 0x10000;

		if (max > 255)
			scalemax = ((255 - y) << 16) / (max - y);
		else
			scalemax = 0x10000;

		scale = FUNC2(scalemin, scalemax);
		r = y + (((r - y) * scale + 0x8000) >> 16);
		g = y + (((g - y) * scale + 0x8000) >> 16);
		b = y + (((b - y) * scale + 0x8000) >> 16);
	}

	*rd = FUNC0(r, 0, 255);
	*gd = FUNC0(g, 0, 255);
	*bd = FUNC0(b, 0, 255);
}