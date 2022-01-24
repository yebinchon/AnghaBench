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
 int /*<<< orphan*/  FUNC0 (char* const,char const* const,size_t const) ; 
 scalar_t__ FUNC1 (char const* const,char const* const) ; 
 scalar_t__ FUNC2 (char const* const,char const* const,size_t const) ; 

void
FUNC3(char *const dst, const size_t dsize, const char *const dir, const char *const root, const size_t rootlen)
{
	*dst = '\0';
	if (FUNC1(dir, root) != 0) {
		if (FUNC1(root, "/") == 0) {
			(void) FUNC0(dst, dir + 1, dsize);
		} else if ((FUNC2(root, dir, rootlen) == 0) && (dir[rootlen] == '/')) {
			(void) FUNC0(dst, dir + rootlen + 1, dsize);
		} else {
			/* Still absolute. */
			(void) FUNC0(dst, dir, dsize);
		}
	}
}