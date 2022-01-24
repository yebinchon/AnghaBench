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
 scalar_t__ FUNC0 (char const**,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (char const*) ; 

char *
FUNC4(const char *argv[], const char *sep)
{
	size_t i, size = 0;
	char *buf;

	for (i = 0; argv[i]; i++)
		size += FUNC3(argv[i]);

	buf = FUNC2(size + 1);
	if (buf && FUNC0(argv, buf, size + 1, sep))
		return buf;
	FUNC1(buf);
	return NULL;
}