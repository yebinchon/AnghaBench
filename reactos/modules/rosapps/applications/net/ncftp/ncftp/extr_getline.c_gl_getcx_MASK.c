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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(int tlen)
{
	int i, c;

	c = (-2);
	tlen -= 2;	/* Adjust for 200ms overhead */
	if (tlen < 1)
		tlen = 1;
	for (i=0; i<tlen; i++) {
		if (FUNC2()) {
			c = (int) FUNC1();
			if ((c == 0) || (c == 0xE0)) {
				/* Read key code */
				c = (int) FUNC1();
				c = FUNC3(c);
				break;
			}
		}
		(void) FUNC0((DWORD) (tlen * 100), FALSE);
	}
	return (c);
}