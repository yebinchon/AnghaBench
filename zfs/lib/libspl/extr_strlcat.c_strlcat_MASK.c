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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

size_t
FUNC2(char *dst, const char *src, size_t dstsize)
{
	char *df = dst;
	size_t left = dstsize;
	size_t l1;
	size_t l2 = FUNC1(src);
	size_t copied;

	while (left-- != 0 && *df != '\0')
		df++;
	l1 = df - dst;
	if (dstsize == l1)
		return (l1 + l2);

	copied = l1 + l2 >= dstsize ? dstsize - l1 - 1 : l2;
	(void) FUNC0(dst + l1, src, copied);
	dst[l1+copied] = '\0';

	return (l1 + l2);
}