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
typedef  int uint8 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  scalar_t__ HBITMAP ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BUFSIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ID_MASK ; 
 int LONG_FORMAT ; 
 int MODE_MASK ; 
 int MODE_SHIFT ; 
 int PERSIST ; 
 int SQUARE ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int*,int,int,int,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int,int*) ; 
 int y ; 

__attribute__((used)) static void
FUNC11(RDPCLIENT * This, STREAM s, uint16 flags, BOOL compressed)
{
	HBITMAP bitmap;
	uint8 cache_id, cache_idx_low, width, height, Bpp;
	uint16 cache_idx, bufsize;
	uint8 *data, *bmpdata, *bitmap_id;

	bitmap_id = NULL;	/* prevent compiler warning */
	cache_id = flags & ID_MASK;
	Bpp = ((flags & MODE_MASK) >> MODE_SHIFT) - 2;

	if (flags & PERSIST)
	{
		FUNC6(s, bitmap_id, 8);
	}

	if (flags & SQUARE)
	{
		FUNC5(s, width);
		height = width;
	}
	else
	{
		FUNC5(s, width);
		FUNC5(s, height);
	}

	FUNC4(s, bufsize);
	bufsize &= BUFSIZE_MASK;
	FUNC5(s, cache_idx);

	if (cache_idx & LONG_FORMAT)
	{
		FUNC5(s, cache_idx_low);
		cache_idx = ((cache_idx ^ LONG_FORMAT) << 8) + cache_idx_low;
	}

	FUNC6(s, data, bufsize);

	FUNC0(("BMPCACHE2(compr=%d,flags=%x,cx=%d,cy=%d,id=%d,idx=%d,Bpp=%d,bs=%d)\n",
	       compressed, flags, width, height, cache_id, cache_idx, Bpp, bufsize));

	if (compressed)
	{
		bmpdata = (uint8 *) FUNC7(width * height * Bpp);

		if(bmpdata == NULL)
			return;

		if (!FUNC1(bmpdata, width, height, data, bufsize, Bpp))
		{
			FUNC0(("Failed to decompress bitmap data\n"));
			FUNC3(bmpdata);
			return;
		}
	}
	else
	{
#if 0
		for (y = 0; y < height; y++)
			memcpy(&bmpdata[(height - y - 1) * (width * Bpp)],
			       &data[y * (width * Bpp)], width * Bpp);
#else
		bmpdata = data;
#endif
	}

	bitmap = FUNC10(This, width, height, bmpdata);

	if (bitmap)
	{
		FUNC2(This, cache_id, cache_idx, bitmap);
		if (flags & PERSIST)
			FUNC9(This, cache_id, cache_idx, bitmap_id, width, height,
					     width * height * Bpp, bmpdata);
	}
	else
	{
		FUNC0(("process_bmpcache2: ui_create_bitmap failed\n"));
	}

	if (compressed)
		FUNC3(bmpdata);
}