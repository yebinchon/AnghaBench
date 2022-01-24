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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

void FUNC3(void *data, size_t width, size_t height, size_t bytewidth)
{
	size_t top, bottom;
	void *topP;
	void *bottomP;
	void *tempbuf;

	if (height <= 1) return; /* No flipping necessary if height is <= 1. */

	top = 0;
	bottom = height - 1;
	tempbuf = FUNC1(bytewidth);
	if (tempbuf == NULL) return;

	while (top < bottom) {
		topP = (void *)((top * bytewidth) + (intptr_t)data);
		bottomP = (void *)((bottom * bytewidth) + (intptr_t)data);

		/* Save and swap scanlines.
		 * Does a simple in-place exchange with a temp buffer. */
		FUNC2(tempbuf, topP, bytewidth);
		FUNC2(topP, bottomP, bytewidth);
		FUNC2(bottomP, tempbuf, bytewidth);

		++top;
		--bottom;
	}
	FUNC0(tempbuf);
}