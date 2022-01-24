#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vncPixel ;
struct TYPE_6__ {int h; int linew; } ;
typedef  TYPE_1__ vncBuffer ;
typedef  int /*<<< orphan*/  rfbScreenInfoPtr ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 TYPE_1__* frameBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(rfbScreenInfoPtr s, int x, int y, int w, int h, vncBuffer * src, int srcx, int srcy)
{
	int xx, yy;

	FUNC3();

	// xsrc,ysrc provide tiling copy support.
	for (yy = y; yy < y + h; yy++)
	{
		int ysrc = srcy + yy - y;
		while (ysrc >= src->h)
			ysrc -= src->h;
		for (xx = x; xx < x + w; xx++)
		{
			vncPixel p, pp;
			int xsrc = srcx + xx - x;
			while (xsrc >= src->linew)
				xsrc -= src->linew;
			p = FUNC0(src, xsrc, ysrc);
			pp = FUNC0(frameBuffer, xx, yy);
			// xor blit!
			FUNC1(frameBuffer, xx, yy, p ^ pp);
		}
	}

	FUNC2(s, x, y, x + w, y + h);
}