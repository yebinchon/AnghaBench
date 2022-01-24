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
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_LEVEL ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NETWORK_UNREACHABLE ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ NERR_WkstaNotStarted ; 
 scalar_t__ RPC_X_NULL_REF_POINTER ; 
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    LPBYTE bufPtr;
    NET_API_STATUS apiReturn;
    DWORD entriesRead, totalEntries;

    /* 1st check: is param 2 (level) correct? (only if param 5 passed?) */
    apiReturn = FUNC3(NULL, 1, NULL, MAX_PREFERRED_LENGTH,
        NULL, &totalEntries, NULL);
    FUNC1(apiReturn == ERROR_INVALID_LEVEL || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);

    /* 2nd check: is param 5 passed? (only if level passes?) */
    apiReturn = FUNC3(NULL, 0, NULL, MAX_PREFERRED_LENGTH,
        NULL, &totalEntries, NULL);

    /* if no network adapter present, bail, the rest of the test will fail */
    if (apiReturn == ERROR_NETWORK_UNREACHABLE)
        return;

    FUNC1(apiReturn == STATUS_ACCESS_VIOLATION || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);

    /* 3rd check: is param 3 passed? */
    apiReturn = FUNC3(NULL, 0, NULL, MAX_PREFERRED_LENGTH,
        NULL, NULL, NULL);
    FUNC1(apiReturn == STATUS_ACCESS_VIOLATION || apiReturn == RPC_X_NULL_REF_POINTER || apiReturn == ERROR_INVALID_PARAMETER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);

    /* 4th check: is param 6 passed? */
    apiReturn = FUNC3(NULL, 0, &bufPtr, MAX_PREFERRED_LENGTH,
        &entriesRead, NULL, NULL);
    FUNC1(apiReturn == RPC_X_NULL_REF_POINTER,
       "NetWkstaTransportEnum returned %d\n", apiReturn);

    /* final check: valid return, actually get data back */
    apiReturn = FUNC3(NULL, 0, &bufPtr, MAX_PREFERRED_LENGTH,
        &entriesRead, &totalEntries, NULL);
    FUNC1(apiReturn == NERR_Success || apiReturn == ERROR_NETWORK_UNREACHABLE || apiReturn == NERR_WkstaNotStarted,
       "NetWkstaTransportEnum returned %d\n", apiReturn);
    if (apiReturn == NERR_Success) {
        /* WKSTA_TRANSPORT_INFO_0 *transports = (WKSTA_TRANSPORT_INFO_0 *)bufPtr; */

        FUNC1(bufPtr != NULL, "got data back\n");
        FUNC1(entriesRead > 0, "read at least one transport\n");
        FUNC1(totalEntries > 0 || FUNC0(totalEntries == 0) /* Win7 */,
           "at least one transport\n");
        FUNC2(bufPtr);
    }
}