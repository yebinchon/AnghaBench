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
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 char* FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(char **plinux_opts, const char *key, const char *value)
{
	size_t len = 0;
	char *new_linux_opts;

	if (*plinux_opts != NULL)
		len = FUNC2(*plinux_opts);

	new_linux_opts = FUNC0(*plinux_opts, len + 1 + FUNC2(key) +
	    (value ? 1 + FUNC2(value) : 0) + 1);

	if (new_linux_opts == NULL)
		return (SA_NO_MEMORY);

	new_linux_opts[len] = '\0';

	if (len > 0)
		FUNC1(new_linux_opts, ",");

	FUNC1(new_linux_opts, key);

	if (value != NULL) {
		FUNC1(new_linux_opts, "=");
		FUNC1(new_linux_opts, value);
	}

	*plinux_opts = new_linux_opts;

	return (SA_OK);
}