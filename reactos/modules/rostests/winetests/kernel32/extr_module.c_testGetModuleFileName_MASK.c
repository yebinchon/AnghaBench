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
typedef  int /*<<< orphan*/  bufW ;
typedef  int /*<<< orphan*/  bufA ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 scalar_t__ is_unicode_enabled ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(const char* name)
{
    HMODULE     hMod;
    char        bufA[MAX_PATH];
    WCHAR       bufW[MAX_PATH];
    DWORD       len1A, len1W = 0, len2A, len2W = 0;

    hMod = (name) ? FUNC3(name) : NULL;

    /* first test, with enough space in buffer */
    FUNC9(bufA, '-', sizeof(bufA));
    FUNC4(0xdeadbeef);
    len1A = FUNC1(hMod, bufA, sizeof(bufA));
    FUNC10(FUNC0() == ERROR_SUCCESS ||
       FUNC5(FUNC0() == 0xdeadbeef), /* <= XP SP3 */
       "LastError was not reset: %u\n", FUNC0());
    FUNC10(len1A > 0, "Getting module filename for handle %p\n", hMod);

    if (is_unicode_enabled)
    {
        FUNC9(bufW, '-', sizeof(bufW));
        FUNC4(0xdeadbeef);
        len1W = FUNC2(hMod, bufW, sizeof(bufW) / sizeof(WCHAR));
        FUNC10(FUNC0() == ERROR_SUCCESS ||
           FUNC5(FUNC0() == 0xdeadbeef), /* <= XP SP3 */
           "LastError was not reset: %u\n", FUNC0());
        FUNC10(len1W > 0, "Getting module filename for handle %p\n", hMod);
    }

    FUNC10(len1A == FUNC11(bufA), "Unexpected length of GetModuleFilenameA (%d/%d)\n", len1A, FUNC7(bufA));

    if (is_unicode_enabled)
    {
        FUNC10(len1W == FUNC8(bufW), "Unexpected length of GetModuleFilenameW (%d/%d)\n", len1W, FUNC8(bufW));
        FUNC10(FUNC6(bufA, bufW, len1A, len1W), "Comparing GetModuleFilenameAW results\n");
    }

    /* second test with a buffer too small */
    FUNC9(bufA, '-', sizeof(bufA));
    len2A = FUNC1(hMod, bufA, len1A / 2);
    FUNC10(len2A > 0, "Getting module filename for handle %p\n", hMod);

    if (is_unicode_enabled)
    {
        FUNC9(bufW, '-', sizeof(bufW));
        len2W = FUNC2(hMod, bufW, len1W / 2);
        FUNC10(len2W > 0, "Getting module filename for handle %p\n", hMod);
        FUNC10(FUNC6(bufA, bufW, len2A, len2W), "Comparing GetModuleFilenameAW results with buffer too small\n" );
        FUNC10(len1W / 2 == len2W, "Correct length in GetModuleFilenameW with buffer too small (%d/%d)\n", len1W / 2, len2W);
    }

    FUNC10(len1A / 2 == len2A,
       "Correct length in GetModuleFilenameA with buffer too small (%d/%d)\n", len1A / 2, len2A);
}