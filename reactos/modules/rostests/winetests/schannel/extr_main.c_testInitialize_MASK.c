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
typedef  int ULONG ;
typedef  int /*<<< orphan*/ * PSECPKG_USER_FUNCTION_TABLE ;
typedef  int /*<<< orphan*/ * PSECPKG_FUNCTION_TABLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int SECPKG_INTERFACE_VERSION ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static void FUNC4(void)
{
    PSECPKG_USER_FUNCTION_TABLE pUserTables, pUserTables2;
    PSECPKG_FUNCTION_TABLE pTables, pTables2;
    ULONG cTables = 0, cUserTables = 0, Version = 0;
    NTSTATUS status;

    /* Passing NULL into one of the parameters of SpLsaModeInitialize or
       SpUserModeInitialize causes a crash. */

    /* SpLsaModeInitialize does not care about the LSA version. */
    status = FUNC2(0, &Version, &pTables2, &cTables);
    FUNC1(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    FUNC1(cTables == 2 ||
       FUNC0(cTables == 1), /* Win2k */
       "cTables: %d\n", cTables);
    FUNC1(pTables2 != NULL,"pTables: %p\n", *pTables2);

    /* We can call it as many times we want. */
    status = FUNC2(0x10000, &Version, &pTables, &cTables);
    FUNC1(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    FUNC1(cTables == 2 ||
       FUNC0(cTables == 1), /* Win2k */
       "cTables: %d\n", cTables);
    FUNC1(pTables != NULL, "pTables: %p\n", *pTables);
    /* It will always return the same pointer. */
    FUNC1(pTables == pTables2, "pTables: %p, pTables2: %p\n", *pTables, pTables2);

    status = FUNC2(0x23456, &Version, &pTables, &cTables);
    FUNC1(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    FUNC1(cTables == 2 ||
       FUNC0(cTables == 1), /* Win2k */
       "cTables: %d\n", cTables);
    FUNC1(pTables != NULL, "pTables: %p\n", *pTables);
    FUNC1(pTables == pTables2, "pTables: %p, pTables2: %p\n", *pTables, pTables2);

    /* Bad versions to SpUserModeInitialize. Parameters unchanged */
    Version = 0xdead;
    cUserTables = 0xdead;
    pUserTables = NULL;
    status = FUNC3(0, &Version, &pUserTables, &cUserTables);
    FUNC1(status == STATUS_INVALID_PARAMETER, "status: 0x%x\n", status);
    FUNC1(Version == 0xdead, "Version: 0x%x\n", Version);
    FUNC1(cUserTables == 0xdead, "cTables: %d\n", cUserTables);
    FUNC1(pUserTables == NULL, "pUserTables: %p\n", *pUserTables);

    status = FUNC3(0x20000, &Version, &pUserTables,
                                   &cUserTables);
    FUNC1(status == STATUS_INVALID_PARAMETER, "status: 0x%x\n", status);
    FUNC1(Version == 0xdead, "Version: 0x%x\n", Version);
    FUNC1(cUserTables == 0xdead, "cTables: %d\n", cUserTables);
    FUNC1(pUserTables == NULL, "pUserTables: %p\n", *pUserTables);

    /* Good version to SpUserModeInitialize */
    status = FUNC3(SECPKG_INTERFACE_VERSION, &Version,
                                   &pUserTables, &cUserTables);
    FUNC1(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    FUNC1(Version == SECPKG_INTERFACE_VERSION, "Version: 0x%x\n", Version);
    FUNC1(cUserTables == 2 ||
       FUNC0(cUserTables == 4), /* Win2k */
       "cUserTables: %d\n", cUserTables);
    FUNC1(pUserTables != NULL, "pUserTables: %p\n", *pUserTables);

    /* Initializing user again */
    status = FUNC3(SECPKG_INTERFACE_VERSION, &Version,
                                   &pUserTables2, &cTables);
    FUNC1(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    FUNC1(pUserTables == pUserTables2, "pUserTables: %p, pUserTables2: %p\n",
       *pUserTables, pUserTables2);
}