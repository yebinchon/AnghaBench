#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_5__ {scalar_t__ use_rdp5; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int*) ; 

__attribute__((used)) static void
FUNC9(RDPCLIENT * This, STREAM s)
{
	HBITMAP bitmap;
	uint16 cache_idx, size;
	uint8 cache_id, width, height, bpp, Bpp;
	uint8 *data, *bmpdata;
	uint16 bufsize, pad2, row_size, final_size;
	uint8 pad1;

	pad2 = row_size = final_size = 0xffff;	/* Shut the compiler up */

	FUNC5(s, cache_id);
	FUNC5(s, pad1);	/* pad */
	FUNC5(s, width);
	FUNC5(s, height);
	FUNC5(s, bpp);
	Bpp = (bpp + 7) / 8;
	FUNC4(s, bufsize);	/* bufsize */
	FUNC4(s, cache_idx);

	if (This->use_rdp5)
	{
		size = bufsize;
	}
	else
	{

		/* Begin compressedBitmapData */
		FUNC4(s, pad2);	/* pad */
		FUNC4(s, size);
		/*      in_uint8s(s, 4);  *//* row_size, final_size */
		FUNC4(s, row_size);
		FUNC4(s, final_size);

	}
	FUNC6(s, data, size);

	FUNC0(("BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d,bpp=%d,size=%d,pad1=%d,bufsize=%d,pad2=%d,rs=%d,fs=%d)\n", width, height, cache_id, cache_idx, bpp, size, pad1, bufsize, pad2, row_size, final_size));

	bmpdata = (uint8 *) FUNC7(width * height * Bpp);

	if(bmpdata == NULL)
		return;

	if (FUNC1(bmpdata, width, height, data, size, Bpp))
	{
		bitmap = FUNC8(This, width, height, bmpdata);
		FUNC2(This, cache_id, cache_idx, bitmap);
	}
	else
	{
		FUNC0(("Failed to decompress bitmap data\n"));
	}

	FUNC3(bmpdata);
}