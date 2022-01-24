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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char *label_name, int label_size)
{
	uint64_t id = 0;
	int fd;

	fd = FUNC1("/dev/urandom", O_RDONLY);
	if (fd >= 0) {
		if (FUNC3(fd, &id, sizeof (id)) != sizeof (id))
			id = 0;

		FUNC0(fd);
	}

	if (id == 0)
		id = (((uint64_t)FUNC2()) << 32) | (uint64_t)FUNC2();

	FUNC4(label_name, label_size, "zfs-%016llx", (u_longlong_t)id);
}