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
typedef  int /*<<< orphan*/  PDSROLE_PRIMARY_DOMAIN_INFO_BASIC ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int DsRolePrimaryDomainInfoBasic ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
    DWORD ret;
    PDSROLE_PRIMARY_DOMAIN_INFO_BASIC dpdi;

    FUNC0(0xdeadbeef);
    ret = FUNC2(NULL, DsRolePrimaryDomainInfoBasic, NULL);
    FUNC1( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);

    FUNC0(0xdeadbeef);
    ret = FUNC2(NULL, 0, NULL);
    FUNC1( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);
    FUNC0(0xdeadbeef);
    ret = FUNC2(NULL, 4, NULL);
    FUNC1( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);

    FUNC0(0xdeadbeef);
    ret = FUNC2(NULL, 4, (PBYTE *)&dpdi);
    FUNC1( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);
}