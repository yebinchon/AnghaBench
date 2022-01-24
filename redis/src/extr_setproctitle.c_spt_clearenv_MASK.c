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
 int /*<<< orphan*/  FUNC0 () ; 
 int errno ; 
 char** FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void) {
#if __GLIBC__
	clearenv();

	return 0;
#else
	extern char **environ;
	static char **tmp;

	if (!(tmp = FUNC1(sizeof *tmp)))
		return errno;

	tmp[0]  = NULL;
	environ = tmp;

	return 0;
#endif
}