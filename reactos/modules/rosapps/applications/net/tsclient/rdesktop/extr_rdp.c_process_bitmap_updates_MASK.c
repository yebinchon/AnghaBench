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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

void
FUNC12(RDPCLIENT * This, STREAM s)
{
	uint16 num_updates;
	uint16 left, top, right, bottom, width, height;
	uint16 cx, cy, bpp, Bpp, compress, bufsize, size;
	uint8 *data, *bmpdata;
	int i;

	FUNC4(s, num_updates);

	for (i = 0; i < num_updates; i++)
	{
		FUNC4(s, left);
		FUNC4(s, top);
		FUNC4(s, right);
		FUNC4(s, bottom);
		FUNC4(s, width);
		FUNC4(s, height);
		FUNC4(s, bpp);
		Bpp = (bpp + 7) / 8;
		FUNC4(s, compress);
		FUNC4(s, bufsize);

		cx = right - left + 1;
		cy = bottom - top + 1;

		FUNC0(("BITMAP_UPDATE(l=%d,t=%d,r=%d,b=%d,w=%d,h=%d,Bpp=%d,cmp=%d)\n",
		       left, top, right, bottom, width, height, Bpp, compress));

		if (!compress)
		{
#if 0
			int y;
			bmpdata = (uint8 *) xmalloc(width * height * Bpp);
			for (y = 0; y < height; y++)
			{
				in_uint8a(s, &bmpdata[(height - y - 1) * (width * Bpp)],
					  width * Bpp);
			}
			ui_paint_bitmap(This, left, top, cx, cy, width, height, bmpdata);
			xfree(bmpdata);
#else
			FUNC6(s, bmpdata, width * height * Bpp);
			FUNC9(This, left, top, cx, cy, width, height, bmpdata);
#endif
			continue;
		}


		if (compress & 0x400)
		{
			size = bufsize;
		}
		else
		{
			FUNC7(s, 2);	/* pad */
			FUNC4(s, size);
			FUNC7(s, 4);	/* line_size, final_size */
		}
		FUNC6(s, data, size);
		bmpdata = (uint8 *) FUNC8(width * height * Bpp);

		if(bmpdata == NULL)
			return;

		if (FUNC2(bmpdata, width, height, data, size, Bpp))
		{
			FUNC9(This, left, top, cx, cy, width, height, bmpdata);
		}
		else
		{
			FUNC1(("Failed to decompress data\n"));
		}

		FUNC3(bmpdata);
	}
}