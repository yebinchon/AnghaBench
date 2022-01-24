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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *remapped[][2], size_t remapped_size, const char *arg)
{
	size_t arglen = FUNC1(arg);
	int i;

	for (i = 0; i < remapped_size; i++) {
		const char *name = remapped[i][0];
		size_t namelen = FUNC1(name);

		if (arglen == namelen &&
		    !FUNC0(arg, name, namelen))
			return i;
	}

	return -1;
}