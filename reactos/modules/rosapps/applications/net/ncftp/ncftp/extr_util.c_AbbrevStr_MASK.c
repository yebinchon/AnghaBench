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
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 

void
FUNC4(char *dst, const char *src, size_t max, int mode)
{
	int len;

	len = (int) FUNC3(src);
	if (len > (int) max) {
		if (mode == 0) {
			/* ...Put ellipses at left */
			(void) FUNC2(dst, "...");
			(void) FUNC0(dst, (char *) src + len - (int) max + 3, max + 1);
		} else {
			/* Put ellipses at right... */
			(void) FUNC1(dst, (char *) src, max + 1);
			(void) FUNC2(dst + max - 3, "...");
		}
	} else {
		(void) FUNC1(dst, (char *) src, max + 1);
	}
}