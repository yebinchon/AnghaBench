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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

int
FUNC3(const char *snapname, char *buf)
{
	char *atp = FUNC1(snapname, '@');
	if (atp == NULL)
		return (FUNC0(EINVAL));
	if (atp - snapname >= ZFS_MAX_DATASET_NAME_LEN)
		return (FUNC0(ENAMETOOLONG));
	(void) FUNC2(buf, snapname, atp - snapname + 1);
	return (0);
}