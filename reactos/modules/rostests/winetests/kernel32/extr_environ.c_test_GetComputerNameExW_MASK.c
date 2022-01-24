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
typedef  int /*<<< orphan*/  nameW ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ComputerNameDnsDomain ; 
 int /*<<< orphan*/  ComputerNameDnsFullyQualified ; 
 int /*<<< orphan*/  ComputerNameDnsHostname ; 
 int /*<<< orphan*/  ComputerNameNetBIOS ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD size;
    BOOL ret;
    LPWSTR nameW;
    DWORD error;

    if (!&pGetComputerNameExW)
    {
        FUNC6("GetComputerNameExW function not implemented\n");
        return;
    }

    size = 0;
    ret = FUNC5(ComputerNameDnsDomain, (LPWSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(!ret && error == ERROR_MORE_DATA, "GetComputerNameExW should have failed with ERROR_MORE_DATA instead of %d\n", error);
    nameW = FUNC2(FUNC1(), 0, size * sizeof(nameW[0]));
    FUNC4(nameW != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsDomain, nameW, &size);
    FUNC4(ret, "GetComputerNameExW(ComputerNameDnsDomain) failed with error %d\n", FUNC0());
    FUNC3(FUNC1(), 0, nameW);

    size = 0;
    ret = FUNC5(ComputerNameDnsFullyQualified, (LPWSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(!ret && error == ERROR_MORE_DATA, "GetComputerNameExW should have failed with ERROR_MORE_DATA instead of %d\n", error);
    nameW = FUNC2(FUNC1(), 0, size * sizeof(nameW[0]));
    FUNC4(nameW != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsFullyQualified, nameW, &size);
    FUNC4(ret, "GetComputerNameExW(ComputerNameDnsFullyQualified) failed with error %d\n", FUNC0());
    FUNC3(FUNC1(), 0, nameW);

    size = 0;
    ret = FUNC5(ComputerNameDnsHostname, (LPWSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(!ret && error == ERROR_MORE_DATA, "GetComputerNameExW should have failed with ERROR_MORE_DATA instead of %d\n", error);
    nameW = FUNC2(FUNC1(), 0, size * sizeof(nameW[0]));
    FUNC4(nameW != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsHostname, nameW, &size);
    FUNC4(ret, "GetComputerNameExW(ComputerNameDnsHostname) failed with error %d\n", FUNC0());
    FUNC3(FUNC1(), 0, nameW);

    size = 0;
    ret = FUNC5(ComputerNameNetBIOS, (LPWSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(!ret && error == ERROR_MORE_DATA, "GetComputerNameExW should have failed with ERROR_MORE_DATA instead of %d\n", error);
    nameW = FUNC2(FUNC1(), 0, size * sizeof(nameW[0]));
    FUNC4(nameW != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameNetBIOS, nameW, &size);
    FUNC4(ret, "GetComputerNameExW(ComputerNameNetBIOS) failed with error %d\n", FUNC0());
    FUNC3(FUNC1(), 0, nameW);
}