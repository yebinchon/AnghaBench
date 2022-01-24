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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_WARN ; 
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(spa_t *spa, nvlist_t *mos_config)
{
	uint64_t hostid;
	char *hostname;
	uint64_t myhostid = 0;

	if (!FUNC4(spa) && FUNC3(mos_config,
	    ZPOOL_CONFIG_HOSTID, &hostid) == 0) {
		hostname = FUNC2(mos_config,
		    ZPOOL_CONFIG_HOSTNAME);

		myhostid = FUNC7(NULL);

		if (hostid != 0 && myhostid != 0 && hostid != myhostid) {
			FUNC1(CE_WARN, "pool '%s' could not be "
			    "loaded as it was last accessed by "
			    "another system (host: %s hostid: 0x%llx). "
			    "See: http://illumos.org/msg/ZFS-8000-EY",
			    FUNC6(spa), hostname, (u_longlong_t)hostid);
			FUNC5(spa, "hostid verification failed: pool "
			    "last accessed by host: %s (hostid: 0x%llx)",
			    hostname, (u_longlong_t)hostid);
			return (FUNC0(EBADF));
		}
	}

	return (0);
}