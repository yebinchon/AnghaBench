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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fsname ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *bookmark, nvlist_t *innvl,
    nvlist_t *outnvl)
{
	char fsname[ZFS_MAX_DATASET_NAME_LEN];
	char *bmname;

	bmname = FUNC2(bookmark, '#');
	if (bmname == NULL)
		return (FUNC0(EINVAL));
	bmname++;

	(void) FUNC3(fsname, bookmark, sizeof (fsname));
	*(FUNC2(fsname, '#')) = '\0';

	return (FUNC1(fsname, bmname, outnvl));
}