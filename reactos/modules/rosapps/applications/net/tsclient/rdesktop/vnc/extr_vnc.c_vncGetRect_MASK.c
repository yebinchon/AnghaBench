#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_2__ vncBuffer ;
typedef  TYPE_3__* rfbScreenInfoPtr ;
struct TYPE_8__ {int bitsPerPixel; int /*<<< orphan*/  depth; } ;
struct TYPE_10__ {int paddedWidthInBytes; char* frameBuffer; TYPE_1__ serverFormat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frameBuffer ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* FUNC4 (int,int,int /*<<< orphan*/ ) ; 

vncBuffer *
FUNC5(rfbScreenInfoPtr s, int x, int y, int w, int h)
{
	int xx, yy;
	vncBuffer *b = FUNC4(w, h, s->serverFormat.depth);

	FUNC3();

	if (s->serverFormat.bitsPerPixel == 8)
	{
		//simple copy
		int srcstep, dststep;
		char *srcdata, *dstdata;
		srcstep = s->paddedWidthInBytes * s->serverFormat.bitsPerPixel / 8;
		dststep = w * s->serverFormat.bitsPerPixel / 8;
		dstdata = b->data;
		srcdata = s->frameBuffer + (y * srcstep + x * s->serverFormat.bitsPerPixel / 8);
		for (yy = 0; yy < h; yy++)
		{
			FUNC2(dstdata, srcdata, dststep);
			dstdata += dststep;
			srcdata += srcstep;
		}
	}
	else
	{
		for (yy = y; yy < y + h; yy++)
		{
			for (xx = x; xx < x + w; xx++)
			{
				FUNC1(b, xx - x, yy - y, FUNC0(frameBuffer, xx, yy));
			}
		}
	}

	return b;
}