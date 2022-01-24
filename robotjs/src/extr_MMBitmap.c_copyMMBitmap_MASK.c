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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {size_t height; size_t bytewidth; int /*<<< orphan*/  bytesPerPixel; int /*<<< orphan*/  bitsPerPixel; int /*<<< orphan*/  width; int /*<<< orphan*/ * imageBuffer; } ;
typedef  TYPE_1__* MMBitmapRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 

MMBitmapRef FUNC4(MMBitmapRef bitmap)
{
	uint8_t *copiedBuf = NULL;

	FUNC0(bitmap != NULL);
	if (bitmap->imageBuffer != NULL) {
		const size_t bufsize = bitmap->height * bitmap->bytewidth;
		copiedBuf = FUNC2(bufsize);
		if (copiedBuf == NULL) return NULL;

		FUNC3(copiedBuf, bitmap->imageBuffer, bufsize);
	}

	return FUNC1(copiedBuf,
	                      bitmap->width,
	                      bitmap->height,
	                      bitmap->bytewidth,
	                      bitmap->bitsPerPixel,
	                      bitmap->bytesPerPixel);
}