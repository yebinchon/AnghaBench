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
 int SIZEOF_STR ; 
 int FUNC0 (char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*) ; 

bool
FUNC2(char buf[], size_t bufsize, const char *prefix, const char *name)
{
	char prefixed[SIZEOF_STR];

	if (*prefix) {
		if (!FUNC1(prefixed, "%s-%s", prefix, name))
			return false;
		name = prefixed;
	}

	return FUNC0(buf, bufsize, name);
}