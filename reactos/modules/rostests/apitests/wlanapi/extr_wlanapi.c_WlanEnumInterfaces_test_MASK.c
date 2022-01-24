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
typedef  int /*<<< orphan*/  PWLAN_INTERFACE_INFO_LIST ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    DWORD ret;
    PWLAN_INTERFACE_INFO_LIST pInterfaceList;

    /* invalid pReserved */
    ret = FUNC0((HANDLE) -1, (PVOID) 1, &pInterfaceList);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");

    /* invalid pInterfaceList */
    ret = FUNC0((HANDLE) -1, NULL, NULL);
    FUNC1(ret == ERROR_INVALID_PARAMETER, "expected failure\n");    
}