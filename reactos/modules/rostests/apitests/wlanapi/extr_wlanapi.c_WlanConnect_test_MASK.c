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
typedef  int /*<<< orphan*/  WLAN_CONNECTION_PARAMETERS ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  InterfaceGuid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    DWORD ret;
    WLAN_CONNECTION_PARAMETERS pConnectParams;
    
    /* invalid pReserved */
    ret = FUNC0((HANDLE) -1, &InterfaceGuid, &pConnectParams, (PVOID) 1);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
    
    /* invalid InterfaceGuid */
    ret = FUNC0((HANDLE) -1, NULL, &pConnectParams, NULL);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
    
    /* invalid hClientHandle */
    ret = FUNC0(NULL, &InterfaceGuid, &pConnectParams, NULL);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");

    /* invalid connection parameters */
    ret = FUNC0((HANDLE) -1, &InterfaceGuid, NULL, NULL);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");
}