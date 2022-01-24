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
 int /*<<< orphan*/  BLKRRPART ; 
 scalar_t__ EBUSY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(int fd)
{
	int retry = 10;
	int error;

	/* Notify the kernel a devices partition table has been updated */
	while ((error = FUNC1(fd, BLKRRPART)) != 0) {
		if ((--retry == 0) || (errno != EBUSY)) {
			(void) FUNC0(stderr, "the kernel failed to rescan "
			    "the partition table: %ld\n", errno);
			return (-1);
		}
		FUNC2(50000);
	}

	return (0);
}