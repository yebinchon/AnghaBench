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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_IOC_SEND_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  from ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  offset ; 
 int /*<<< orphan*/  resumeobj ; 

__attribute__((used)) static void
FUNC7(const char *snapshot, int fd)
{
	nvlist_t *required = FUNC5();
	nvlist_t *optional = FUNC5();

	FUNC2(required, "fd", fd);

	FUNC1(optional, "largeblockok");
	FUNC1(optional, "embedok");
	FUNC1(optional, "compressok");
	FUNC1(optional, "rawok");

	/*
	 * TODO - Resumable send is harder to set up. So we currently
	 * ignore testing for that variant.
	 */
#if 0
	fnvlist_add_string(optional, "fromsnap", from);
	fnvlist_add_uint64(optional, "resume_object", resumeobj);
	fnvlist_add_uint64(optional, "resume_offset", offset);
#endif
	FUNC0(ZFS_IOC_SEND_NEW, snapshot, required, optional, 0);

	FUNC6(optional);
	FUNC6(required);
}