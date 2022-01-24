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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ComputerNameDnsDomain ; 
 int /*<<< orphan*/  ComputerNameDnsFullyQualified ; 
 int /*<<< orphan*/  ComputerNameDnsHostname ; 
 int /*<<< orphan*/  ComputerNameNetBIOS ; 
 int ERROR_MORE_DATA ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    DWORD size;
    BOOL ret;
    LPSTR name;
    DWORD error;

    static const int MAX_COMP_NAME = 32767;

    if (!&pGetComputerNameExA)
    {
        FUNC7("GetComputerNameExA function not implemented\n");
        return;
    }

    size = 0;
    ret = FUNC5(ComputerNameDnsDomain, (LPSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(ret == 0, "Expected 0, got %d\n", ret);
    FUNC4(error == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", error);

    /* size is not set in win2k */
    if (size == 0)
    {
        FUNC7("Win2k doesn't set the size\n");
        size = MAX_COMP_NAME;
    }
    name = FUNC2(FUNC1(), 0, size * sizeof(name[0]));
    FUNC4(name != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsDomain, name, &size);
    FUNC4(ret, "GetComputerNameExA(ComputerNameDnsDomain) failed with error %d\n", FUNC0());
    FUNC6("domain name is \"%s\"\n", name);
    FUNC3(FUNC1(), 0, name);

    size = 0;
    ret = FUNC5(ComputerNameDnsFullyQualified, (LPSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(ret == 0, "Expected 0, got %d\n", ret);
    FUNC4(error == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", error);

    /* size is not set in win2k */
    if (size == 0)
        size = MAX_COMP_NAME;
    name = FUNC2(FUNC1(), 0, size * sizeof(name[0]));
    FUNC4(name != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsFullyQualified, name, &size);
    FUNC4(ret, "GetComputerNameExA(ComputerNameDnsFullyQualified) failed with error %d\n", FUNC0());
    FUNC6("fully qualified hostname is \"%s\"\n", name);
    FUNC3(FUNC1(), 0, name);

    size = 0;
    ret = FUNC5(ComputerNameDnsHostname, (LPSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(ret == 0, "Expected 0, got %d\n", ret);
    FUNC4(error == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", error);

    /* size is not set in win2k */
    if (size == 0)
        size = MAX_COMP_NAME;
    name = FUNC2(FUNC1(), 0, size * sizeof(name[0]));
    FUNC4(name != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameDnsHostname, name, &size);
    FUNC4(ret, "GetComputerNameExA(ComputerNameDnsHostname) failed with error %d\n", FUNC0());
    FUNC6("hostname is \"%s\"\n", name);
    FUNC3(FUNC1(), 0, name);

    size = 0;
    ret = FUNC5(ComputerNameNetBIOS, (LPSTR)0xdeadbeef, &size);
    error = FUNC0();
    FUNC4(ret == 0, "Expected 0, got %d\n", ret);
    FUNC4(error == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", error);

    /* size is not set in win2k */
    if (size == 0)
        size = MAX_COMP_NAME;
    name = FUNC2(FUNC1(), 0, size * sizeof(name[0]));
    FUNC4(name != NULL, "HeapAlloc failed with error %d\n", FUNC0());
    ret = FUNC5(ComputerNameNetBIOS, name, &size);
    FUNC4(ret, "GetComputerNameExA(ComputerNameNetBIOS) failed with error %d\n", FUNC0());
    FUNC6("NetBIOS name is \"%s\"\n", name);
    FUNC3(FUNC1(), 0, name);
}