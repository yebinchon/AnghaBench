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
 int /*<<< orphan*/  FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 

int
FUNC3(const char *const s)
{
	int c;
	int result;

	c = *s;
	if (FUNC1(c))
		c = FUNC2(c);
	result = 0;
	switch (c) {
		case 'f':			       /* false */
			/*FALLTHROUGH*/
		case 'n':			       /* no */
			break;
		case 'o':			       /* test for "off" and "on" */
			c = (int) s[1];
			if (FUNC1(c))
				c = FUNC2(c);
			if (c == 'f')
				break;
			/*FALLTHROUGH*/
		case 't':			       /* true */
			/*FALLTHROUGH*/
		case 'y':			       /* yes */
			result = 1;
			break;
		default:			       /* 1, 0, -1, other number? */
			if (FUNC0(s) != 0)
				result = 1;
	}
	return result;
}