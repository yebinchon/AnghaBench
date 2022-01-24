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
typedef  int /*<<< orphan*/  compName ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_BAD_NETPATH ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_DLL_INIT_FAILED ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_COMPUTERNAME_LENGTH ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( void)
{
    CHAR compName[MAX_COMPUTERNAME_LENGTH + 1];
    CHAR netwName[MAX_COMPUTERNAME_LENGTH + 3]; /* 2 chars for double backslash */
    DWORD len = sizeof(compName) ;
    BOOL ret;
    LONG retl;
    HKEY hkey;
    SC_HANDLE schnd;

    FUNC6(0xdeadbeef);
    ret = FUNC1(compName, &len);
    FUNC9( ret, "GetComputerName failed err = %d\n", FUNC2());
    if( !ret) return;

    FUNC7(netwName, "\\\\");
    FUNC8(netwName+2, compName, MAX_COMPUTERNAME_LENGTH + 1);

    retl = FUNC5( compName, HKEY_LOCAL_MACHINE, &hkey);
    FUNC9( !retl ||
        retl == ERROR_DLL_INIT_FAILED ||
        retl == ERROR_BAD_NETPATH, /* some win2k */
        "RegConnectRegistryA failed err = %d\n", retl);
    if( !retl) FUNC4( hkey);

    retl = FUNC5( netwName, HKEY_LOCAL_MACHINE, &hkey);
    FUNC9( !retl ||
        retl == ERROR_DLL_INIT_FAILED ||
        retl == ERROR_BAD_NETPATH, /* some win2k */
        "RegConnectRegistryA failed err = %d\n", retl);
    if( !retl) FUNC4( hkey);

    FUNC6(0xdeadbeef);
    schnd = FUNC3( compName, NULL, GENERIC_READ); 
    if (FUNC2() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC10("OpenSCManagerA is not implemented\n");
        return;
    }

    FUNC9( schnd != NULL, "OpenSCManagerA failed err = %d\n", FUNC2());
    FUNC0( schnd);

    FUNC6(0xdeadbeef);
    schnd = FUNC3( netwName, NULL, GENERIC_READ); 
    FUNC9( schnd != NULL, "OpenSCManagerA failed err = %d\n", FUNC2());
    FUNC0( schnd);

}