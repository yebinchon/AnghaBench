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
 int /*<<< orphan*/  BLKZNAME ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC2(char *var, int fd)
{
	int error = 0;
	char msg[ZFS_MAX_DATASET_NAME_LEN];

	error = FUNC0(fd, BLKZNAME, msg);
	if (error < 0) {
		return (error);
	}

	FUNC1(var, ZFS_MAX_DATASET_NAME_LEN, "%s", msg);
	return (error);
}