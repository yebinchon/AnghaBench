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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *buf)
{
	char *cp;
	size_t len;

	if (buf == NULL)
		return (NULL);

	len = FUNC2(buf) + 1;
	cp = (char *) FUNC0(len);
	if (cp != NULL)
		(void) FUNC1(cp, buf, len);
	return (cp);
}