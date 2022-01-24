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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_BUFFER_OVERFLOW ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_COMPUTERNAME_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    DWORD size;
    BOOL ret;
    LPSTR name;
    LPWSTR nameW;
    DWORD error;
    int name_len;

    size = 0;
    ret = FUNC0((LPSTR)0xdeadbeef, &size);
    error = FUNC2();
    FUNC7(!ret && error == ERROR_BUFFER_OVERFLOW, "GetComputerNameA should have failed with ERROR_BUFFER_OVERFLOW instead of %d\n", error);

    /* Only Vista returns the computer name length as documented in the MSDN */
    if (size != 0)
    {
        size++; /* nul terminating character */
        name = FUNC4(FUNC3(), 0, size * sizeof(name[0]));
        FUNC7(name != NULL, "HeapAlloc failed with error %d\n", FUNC2());
        ret = FUNC0(name, &size);
        FUNC7(ret, "GetComputerNameA failed with error %d\n", FUNC2());
        FUNC5(FUNC3(), 0, name);
    }

    size = MAX_COMPUTERNAME_LENGTH + 1;
    name = FUNC4(FUNC3(), 0, size * sizeof(name[0]));
    FUNC7(name != NULL, "HeapAlloc failed with error %d\n", FUNC2());
    ret = FUNC0(name, &size);
    FUNC7(ret, "GetComputerNameA failed with error %d\n", FUNC2());
    FUNC9("computer name is \"%s\"\n", name);
    name_len = FUNC8(name);
    FUNC7(size == name_len, "size should be same as length, name_len=%d, size=%d\n", name_len, size);
    FUNC5(FUNC3(), 0, name);

    size = 0;
    FUNC6(0xdeadbeef);
    ret = FUNC1((LPWSTR)0xdeadbeef, &size);
    error = FUNC2();
    if (error == ERROR_CALL_NOT_IMPLEMENTED)
        FUNC10("GetComputerNameW is not implemented\n");
    else
    {
        FUNC7(!ret && error == ERROR_BUFFER_OVERFLOW, "GetComputerNameW should have failed with ERROR_BUFFER_OVERFLOW instead of %d\n", error);
        size++; /* nul terminating character */
        nameW = FUNC4(FUNC3(), 0, size * sizeof(nameW[0]));
        FUNC7(nameW != NULL, "HeapAlloc failed with error %d\n", FUNC2());
        ret = FUNC1(nameW, &size);
        FUNC7(ret, "GetComputerNameW failed with error %d\n", FUNC2());
        FUNC5(FUNC3(), 0, nameW);
    }
}