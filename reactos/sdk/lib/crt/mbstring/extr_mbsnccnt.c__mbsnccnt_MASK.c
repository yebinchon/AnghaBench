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
 scalar_t__ FUNC0 (unsigned char) ; 

size_t FUNC1(const unsigned char *str, size_t n)
{
	unsigned char *s = (unsigned char *)str;
	size_t cnt = 0;
	while(*s != 0 && n > 0) {
		if (FUNC0(*s) )
			s++;
		else
			n--;
		s++;
		cnt++;
	}

	return cnt;
}