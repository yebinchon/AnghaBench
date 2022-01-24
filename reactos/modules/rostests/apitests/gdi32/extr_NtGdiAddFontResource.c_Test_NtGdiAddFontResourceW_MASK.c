#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lpszFontSearch ;
typedef  int /*<<< orphan*/  lpszFontPath ;
struct TYPE_7__ {char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12()
{
    WCHAR lpszFontPath[MAX_PATH];
    WCHAR lpszFontSearch[MAX_PATH];

    INT ret;
    UNICODE_STRING NtAbsPath;
    WIN32_FIND_DATAW FindFileData;
    HANDLE hFind;
    ULONG cwc;

    // Create "Font" folder Path
    FUNC2(lpszFontPath, MAX_PATH);
    FUNC8(lpszFontPath, sizeof(lpszFontPath), L"\\Fonts\\");

    // Search first .ttf file in Fonts Path
    FUNC9(lpszFontSearch, sizeof(lpszFontSearch), lpszFontPath);
    FUNC8(lpszFontSearch, sizeof(lpszFontSearch), L"*.ttf");

    hFind = FUNC0(lpszFontSearch, &FindFileData);

    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC11("Unable to find fonts in Font directory!\n");
        return;
    }

    // File found. Create FontPath to File.
    FUNC8(lpszFontPath, sizeof(lpszFontPath), FindFileData.cFileName);

    // Fail due "cwc" being zero.
    FUNC7(0xdeaddead);
    FUNC6(&NtAbsPath, NULL);
    FUNC4(lpszFontPath, &NtAbsPath, NULL, NULL);
    cwc = 0;
    ret =  FUNC3(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    FUNC10(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    FUNC10(FUNC1() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", FUNC1());

    FUNC5(&NtAbsPath);

    // "cwc" must count the null terminator. Otherwise fails.
    FUNC7(0xdeaddead);
    FUNC6(&NtAbsPath, NULL);
    FUNC4(lpszFontPath, &NtAbsPath, NULL, NULL);
    cwc = NtAbsPath.Length / sizeof(WCHAR);
    ret =  FUNC3(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    FUNC10(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    FUNC10(FUNC1() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", FUNC1());

    FUNC5(&NtAbsPath);

    // Correct "cwc" value.
    FUNC7(0xdeaddead);
    FUNC6(&NtAbsPath, NULL);
    FUNC4(lpszFontPath, &NtAbsPath, NULL, NULL);
    cwc = NtAbsPath.Length / sizeof(WCHAR) + 1;
    ret =  FUNC3(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    FUNC10(ret == 1, "Expected 1 files added. Added: %d\n", ret);
    FUNC10(FUNC1() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", FUNC1());

    FUNC5(&NtAbsPath);

    // Test an invalid pointer.
    FUNC7(0xdeadbeef);
    ret =  FUNC3((PVOID)-4, 123, 1, 0, 0, NULL);

    FUNC10(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    FUNC10(FUNC1() == 0xdeadbeef, "Expected 0xdeadbeef. Obtained: 0x%lx\n", FUNC1());
}