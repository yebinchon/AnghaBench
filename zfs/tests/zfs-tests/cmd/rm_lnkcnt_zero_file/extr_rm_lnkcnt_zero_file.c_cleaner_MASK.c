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
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 char* filebase ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void *
FUNC5(void *a)
{
	char buf[256];
	int idx, len, ret;

	len = FUNC4(filebase) + 5;

	for (;;) {
		idx = FUNC1();
		(void) FUNC3(buf, len, "%s.%03d", filebase, idx);
		ret = FUNC2(buf);
		if (ret < 0 && errno != ENOENT)
			(void) FUNC0("removing file");
	}

	return (NULL);
}