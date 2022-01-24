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
typedef  int NET_API_STATUS ;
typedef  int NETSETUP_JOIN_STATUS ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int NERR_Success ; 
 int NetSetupUnknownStatus ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    NET_API_STATUS ret;
    LPWSTR buffer = NULL;
    NETSETUP_JOIN_STATUS buffertype = 0xdada;
    /* NT4 doesn't have this function */
    if (!&pNetGetJoinInformation) {
        FUNC4("NetGetJoinInformation not available\n");
        return;
    }

    ret = FUNC2(NULL, NULL, NULL);
    FUNC0(ret == ERROR_INVALID_PARAMETER, "NetJoinGetInformation returned unexpected 0x%08x\n", ret);
    FUNC0(buffertype == 0xdada, "buffertype set to unexpected value %d\n", buffertype);

    ret = FUNC2(NULL, &buffer, &buffertype);
    FUNC0(ret == NERR_Success, "NetJoinGetInformation returned unexpected 0x%08x\n", ret);
    FUNC0(buffertype != 0xdada && buffertype != NetSetupUnknownStatus, "buffertype set to unexpected value %d\n", buffertype);
    FUNC3("workstation joined to %s with status %d\n", FUNC5(buffer), buffertype);
    FUNC1(buffer);
}