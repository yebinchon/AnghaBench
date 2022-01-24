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
typedef  int /*<<< orphan*/  Rune ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC2(const char *a, const char *b, int n)
{
	Rune ra, rb;
	int c;
	while (n--) {
		if (!*a) return -1;
		if (!*b) return 1;
		a += FUNC1(&ra, a);
		b += FUNC1(&rb, b);
		c = FUNC0(ra) - FUNC0(rb);
		if (c)
			return c;
	}
	return 0;
}