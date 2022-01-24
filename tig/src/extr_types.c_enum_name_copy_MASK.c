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
 char FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char) ; 

bool
FUNC2(char buf[], size_t bufsize, const char *name)
{
	int bufpos;

	for (bufpos = 0; name[bufpos] && bufpos < bufsize - 1; bufpos++) {
		buf[bufpos] = FUNC0(name[bufpos]);
		if (FUNC1(buf[bufpos]))
			buf[bufpos] = '-';
	}

	buf[bufpos] = 0;
	return bufpos < bufsize;
}