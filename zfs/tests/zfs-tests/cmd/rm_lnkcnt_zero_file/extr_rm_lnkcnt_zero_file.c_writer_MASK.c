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
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  filebase ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static void *
FUNC4(void *a)
{
	int *fd = (int *)a;
	int ret;

	for (;;) {
		if (*fd != -1)
			(void) FUNC0 (*fd);

		*fd = FUNC1(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
		if (*fd == -1) {
			FUNC2("fail to open test file, refreshing it");
			continue;
		}

		ret = FUNC3(*fd, "test\n", 5);
		if (ret != 5)
			FUNC2("writing file");
	}

	return (NULL);
}