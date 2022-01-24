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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

size_t
FUNC3(char *dst, size_t dstlen, const char *src, int srclen, int tabsize)
{
	size_t size, pos;

	for (size = pos = 0; size < dstlen - 1 && (srclen == -1 || pos < srclen) && src[pos]; pos++) {
		const char c = src[pos];

		if (c == '\t') {
			size_t expanded = tabsize - (size % tabsize);

			if (expanded + size >= dstlen - 1)
				expanded = dstlen - size - 1;
			FUNC2(dst + size, "        ", expanded);
			size += expanded;
		} else if (FUNC1(c) || FUNC0(c)) {
			dst[size++] = ' ';
		} else {
			dst[size++] = src[pos];
		}
	}

	dst[size] = 0;
	return pos;
}