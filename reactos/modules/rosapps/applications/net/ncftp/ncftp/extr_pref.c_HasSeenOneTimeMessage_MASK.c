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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  gOneTimeMessagesSeen ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const* const,char*) ; 
 char* FUNC2 (char*,char*) ; 

int
FUNC3(const char *const msg)
{
	char buf[256];
	char *a, *b;

	FUNC0(buf, gOneTimeMessagesSeen, sizeof(buf));
	for (a = buf; (b = FUNC2(a, ",\n")) != NULL; a = NULL) {
		if (FUNC1(msg, b) == 0)
			return (1);
	}
	return (0);
}