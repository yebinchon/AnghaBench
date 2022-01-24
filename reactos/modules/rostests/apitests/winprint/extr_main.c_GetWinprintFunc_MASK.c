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
typedef  int /*<<< orphan*/  wszWinprintPath ;
typedef  char const WCHAR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MOD_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

PVOID
FUNC6(const char* FunctionName)
{
    DWORD cbNeeded;
    HMODULE hWinprint;
    PVOID pFunc;
    WCHAR wszWinprintPath[MAX_PATH];

    // Build the path to the default Print Processor winprint.dll in the Print Processor directory.
    if (!FUNC1(NULL, NULL, 1, (LPBYTE)wszWinprintPath, sizeof(wszWinprintPath), &cbNeeded))
    {
        FUNC4("Could not determine the path to the Print Processor directory, last error is %lu!\n", FUNC0());
        return NULL;
    }

    FUNC5(wszWinprintPath, L"\\winprint.dll");

    // Try loading it.
    hWinprint = FUNC3(wszWinprintPath);
    if (!hWinprint)
    {
        if (FUNC0() != ERROR_MOD_NOT_FOUND)
        {
            FUNC4("LoadLibraryW failed for %S with error %lu!\n", wszWinprintPath, FUNC0());
            return NULL;
        }

        // winprint.dll does not exist prior to NT6.
        // The default Print Processor is implemented in localspl.dll instead.
        hWinprint = FUNC3(L"localspl.dll");
        if (!hWinprint)
        {
            FUNC4("LoadLibraryW failed for localspl.dll with error %lu!\n", FUNC0());
            return NULL;
        }
    }

    // Get the function we are looking for.
    pFunc = FUNC2(hWinprint, FunctionName);
    if (!pFunc)
    {
        FUNC4("GetProcAddress failed for %s with error %lu!\n", FunctionName, FUNC0());
        return NULL;
    }
    
    return pFunc;
}