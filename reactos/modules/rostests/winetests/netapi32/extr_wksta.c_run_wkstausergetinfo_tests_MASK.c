#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WKSTA_USER_INFO_1101 ;
typedef  int /*<<< orphan*/  WKSTA_USER_INFO_1 ;
typedef  int /*<<< orphan*/  WKSTA_USER_INFO_0 ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  wkui1101_oth_domains; int /*<<< orphan*/  wkui1_oth_domains; int /*<<< orphan*/  wkui1_logon_server; int /*<<< orphan*/  wkui1_logon_domain; int /*<<< orphan*/  wkui1_username; int /*<<< orphan*/  wkui0_username; } ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  TYPE_1__* LPWKSTA_USER_INFO_1101 ;
typedef  TYPE_1__* LPWKSTA_USER_INFO_1 ;
typedef  TYPE_1__* LPWKSTA_USER_INFO_0 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_LEVEL ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ NERR_WkstaNotStarted ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  user_name ; 

__attribute__((used)) static void FUNC7(void)
{
    LPWKSTA_USER_INFO_0 ui0 = NULL;
    LPWKSTA_USER_INFO_1 ui1 = NULL;
    LPWKSTA_USER_INFO_1101 ui1101 = NULL;
    DWORD dwSize;
    NET_API_STATUS rc;

    /* Level 0 */
    rc = FUNC5(NULL, 0, (LPBYTE *)&ui0);
    if (rc == NERR_WkstaNotStarted)
    {
        FUNC6("Workstation service not running\n");
        return;
    }
    FUNC2(!rc && ui0, "got %d and %p (expected NERR_Success and != NULL\n", rc, ui0);

    /* This failure occurred when I ran sshd as service and didn't authenticate
     * Since the test dereferences ui0, the rest of this test is worthless
     */
    if (!ui0)
    {
        return;
    }

    FUNC2(!FUNC0(user_name, ui0->wkui0_username), "This is really user name\n");
    FUNC4(ui0, &dwSize);
    FUNC2(dwSize >= (sizeof(WKSTA_USER_INFO_0) +
                 FUNC1(ui0->wkui0_username) * sizeof(WCHAR)),
       "Is allocated with NetApiBufferAllocate\n");

    /* Level 1 */
    FUNC2(FUNC5(NULL, 1, (LPBYTE *)&ui1) == NERR_Success,
       "NetWkstaUserGetInfo is successful\n");
    FUNC2(FUNC0(ui1->wkui1_username, ui0->wkui0_username) == 0,
       "the same name as returned for level 0\n");
    FUNC4(ui1, &dwSize);
    FUNC2(dwSize >= (sizeof(WKSTA_USER_INFO_1) +
                  (FUNC1(ui1->wkui1_username) +
                   FUNC1(ui1->wkui1_logon_domain) +
                   FUNC1(ui1->wkui1_oth_domains) +
                   FUNC1(ui1->wkui1_logon_server)) * sizeof(WCHAR)),
       "Is allocated with NetApiBufferAllocate\n");

    /* Level 1101 */
    FUNC2(FUNC5(NULL, 1101, (LPBYTE *)&ui1101) == NERR_Success,
       "NetWkstaUserGetInfo is successful\n");
    FUNC2(FUNC0(ui1101->wkui1101_oth_domains, ui1->wkui1_oth_domains) == 0,
       "the same oth_domains as returned for level 1\n");
    FUNC4(ui1101, &dwSize);
    FUNC2(dwSize >= (sizeof(WKSTA_USER_INFO_1101) +
                 FUNC1(ui1101->wkui1101_oth_domains) * sizeof(WCHAR)),
       "Is allocated with NetApiBufferAllocate\n");

    FUNC3(ui0);
    FUNC3(ui1);
    FUNC3(ui1101);

    /* errors handling */
    FUNC2(FUNC5(NULL, 10000, (LPBYTE *)&ui0) == ERROR_INVALID_LEVEL,
       "Invalid level\n");
}