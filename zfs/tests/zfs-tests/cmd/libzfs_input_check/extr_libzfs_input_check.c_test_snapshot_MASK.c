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
 int /*<<< orphan*/  ZFS_IOC_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *pool, const char *snapshot)
{
	nvlist_t *required = FUNC4();
	nvlist_t *optional = FUNC4();
	nvlist_t *snaps = FUNC4();
	nvlist_t *props = FUNC4();

	FUNC1(snaps, snapshot);
	FUNC2(required, "snaps", snaps);

	FUNC3(props, "org.openzfs:launch", "September 17th, 2013");
	FUNC2(optional, "props", props);

	FUNC0(ZFS_IOC_SNAPSHOT, pool, required, optional, 0);

	FUNC5(props);
	FUNC5(snaps);
	FUNC5(optional);
	FUNC5(required);
}