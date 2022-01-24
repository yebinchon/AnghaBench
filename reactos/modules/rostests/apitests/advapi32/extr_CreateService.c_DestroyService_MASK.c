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
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DNS_ERROR_RCODE_NXRRSET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(SC_HANDLE hService)
{
    LONG ret;

    if (!hService)
        return;
    FUNC3(DNS_ERROR_RCODE_NXRRSET);
    ret = FUNC1(hService);
    FUNC4(ret == TRUE, "DeleteService returned %ld, expected 1\n", ret);
    FUNC4(FUNC2() == DNS_ERROR_RCODE_NXRRSET /* win7 */
        || FUNC2() == ERROR_SUCCESS /* win2k3 */, "DeleteService GetLastError()=0x%08lx\n", FUNC2());

    FUNC0(hService);
}