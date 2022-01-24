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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC2(char *dst, size_t dsize, char *src)
{
	char *dlim = dst + dsize - 1;
	char *dst0 = dst;
	int c;

	while ((c = *src) != '\0') {
		src++;
		if ((c == '\\') || (c == ',') || (c == '$')) {
			/* These need to be escaped. */
			if ((dst + 1) < dlim) {
				*dst++ = '\\';
				*dst++ = c;
			}
		} else if (!FUNC0(c)) {
			/* Escape non-printing characters. */
			if ((dst + 2) < dlim) {
				(void) FUNC1(dst, "$%02x", c);
				dst += 3;
			}
		} else {
			if (dst < dlim)
				*dst++ = c;
		}
	}
	*dst = '\0';
	return (dst0);
}