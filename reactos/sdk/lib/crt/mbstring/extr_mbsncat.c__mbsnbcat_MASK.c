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
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int FUNC2 (unsigned char*) ; 

unsigned char * FUNC3(unsigned char *dst, const unsigned char *src, size_t n)
{
	unsigned char *d;
	const unsigned char *s = src;
	if (n != 0) {
		d = dst + FUNC2(dst); // get the end of string
		d += FUNC1(*d); // move 1 or 2 up

		do {
			if ((*d++ = *s++) == 0)
			{
				while (--n != 0)
					*d++ = 0;
				break;
			}
			if ( !(n==1 && FUNC0(*s)) )
				n--;
		} while (n > 0);
	}
	return dst;
}