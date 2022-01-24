#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dwFileVersionLS; scalar_t__ dwFileVersionMS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int DWORDLONG ;
typedef  long DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 long ERROR_BAD_PATHNAME ; 
 long ERROR_INVALID_DATA ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,long,scalar_t__) ; 
 long FUNC1 (char*,long*) ; 
 long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int MAX_PATH ; 
 long MY_LAST_ERROR ; 
 long NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int FUNC7 (scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    DWORD hdl, retval;
    PVOID pVersionInfo = NULL;
    BOOL boolret;
    VS_FIXEDFILEINFO *pFixedVersionInfo;
    UINT uiLength;
    char VersionString[MAX_PATH];
    static const char backslash[] = "\\";
    DWORDLONG dwlVersion;

    hdl = 0x55555555;
    FUNC6(MY_LAST_ERROR);
    retval = FUNC1( "kernel32.dll", &hdl);
    FUNC9( retval,
	"GetFileVersionInfoSizeA result wrong! <> 0L expected, got 0x%08x\n",
	retval);
    FUNC9((NO_ERROR == FUNC2()) || (MY_LAST_ERROR == FUNC2()),
	"Last error wrong! NO_ERROR/0x%08x (NT4)  expected, got %u\n",
	MY_LAST_ERROR, FUNC2());
    FUNC9( hdl == 0L,
	"Handle wrong! 0L expected, got 0x%08x\n", hdl);

    if ( retval == 0 || hdl != 0)
        return;

    pVersionInfo = FUNC4( FUNC3(), HEAP_ZERO_MEMORY, retval );
    FUNC9(pVersionInfo != 0, "HeapAlloc failed\n" );
    if (pVersionInfo == 0)
        return;

    if (0)
    {
    /* this test crashes on WinNT4
     */
    boolret = FUNC0( "kernel32.dll", 0, retval, 0);
    FUNC9 (!boolret, "GetFileVersionInfoA should have failed: GetLastError = %u\n", FUNC2());
    FUNC9 ((FUNC2() == ERROR_INVALID_DATA) || (FUNC2() == ERROR_BAD_PATHNAME) ||
	(FUNC2() == NO_ERROR),
        "Last error wrong! ERROR_INVALID_DATA/ERROR_BAD_PATHNAME (ME)/"
	"NO_ERROR (95) expected, got %u\n",
        FUNC2());
    }

    boolret = FUNC0( "kernel32.dll", 0, retval, pVersionInfo );
    FUNC9 (boolret, "GetFileVersionInfoA failed: GetLastError = %u\n", FUNC2());
    if (!boolret)
        goto cleanup;

    boolret = FUNC7( pVersionInfo, NULL, (LPVOID *)&pFixedVersionInfo, &uiLength );
    FUNC9 (boolret || FUNC2() == NO_ERROR /* Win98 */,
       "VerQueryValueA failed: GetLastError = %u\n", FUNC2());

    boolret = FUNC7( pVersionInfo, "", (LPVOID *)&pFixedVersionInfo, &uiLength );
    FUNC9 (boolret, "VerQueryValueA failed: GetLastError = %u\n", FUNC2());

    boolret = FUNC7( pVersionInfo, backslash, (LPVOID *)&pFixedVersionInfo, &uiLength );
    FUNC9 (boolret, "VerQueryValueA failed: GetLastError = %u\n", FUNC2());
    if (!boolret)
        goto cleanup;

    dwlVersion = (((DWORDLONG)pFixedVersionInfo->dwFileVersionMS) << 32) +
        pFixedVersionInfo->dwFileVersionLS;

    FUNC8(dwlVersion, VersionString);

    FUNC10("kernel32.dll version: %s\n", VersionString);

    if (0)
    {
    /* this test crashes on WinNT4
     */
    boolret = FUNC7( pVersionInfo, backslash, (LPVOID *)&pFixedVersionInfo, 0);
    FUNC9 (boolret, "VerQueryValue failed: GetLastError = %u\n", FUNC2());
    }

cleanup:
    FUNC5( FUNC3(), 0, pVersionInfo);
}