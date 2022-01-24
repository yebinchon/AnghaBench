#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lpszSourceUrlName; } ;
typedef  TYPE_1__ INTERNET_CACHE_ENTRY_INFOA ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_url ; 

__attribute__((used)) static void FUNC11(void)
{
    BOOL ret;
    HANDLE hEnumHandle;
    BOOL found = FALSE;
    DWORD cbCacheEntryInfo;
    DWORD cbCacheEntryInfoSaved;
    INTERNET_CACHE_ENTRY_INFOA *lpCacheEntryInfo;

    cbCacheEntryInfo = 0;
    FUNC8(0xdeadbeef);
    hEnumHandle = FUNC1(NULL, NULL, &cbCacheEntryInfo);
    FUNC9(!hEnumHandle, "FindFirstUrlCacheEntry should have failed\n");
    FUNC9(FUNC3() == ERROR_INSUFFICIENT_BUFFER, "FindFirstUrlCacheEntry should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", FUNC3());
    lpCacheEntryInfo = FUNC5(FUNC4(), 0, cbCacheEntryInfo * sizeof(char));
    cbCacheEntryInfoSaved = cbCacheEntryInfo;
    hEnumHandle = FUNC1(NULL, lpCacheEntryInfo, &cbCacheEntryInfo);
    FUNC9(hEnumHandle != NULL, "FindFirstUrlCacheEntry failed with error %d\n", FUNC3());
    while (TRUE)
    {
        if (!FUNC10(lpCacheEntryInfo->lpszSourceUrlName, test_url))
        {
            found = TRUE;
            ret = TRUE;
            break;
        }
        FUNC8(0xdeadbeef);
        cbCacheEntryInfo = cbCacheEntryInfoSaved;
        ret = FUNC2(hEnumHandle, lpCacheEntryInfo, &cbCacheEntryInfo);
        if (!ret)
        {
            if (FUNC3() == ERROR_INSUFFICIENT_BUFFER)
            {
                lpCacheEntryInfo = FUNC7(FUNC4(), 0, lpCacheEntryInfo, cbCacheEntryInfo);
                cbCacheEntryInfoSaved = cbCacheEntryInfo;
                ret = FUNC2(hEnumHandle, lpCacheEntryInfo, &cbCacheEntryInfo);
            }
        }
        if (!ret)
            break;
    }
    FUNC9(ret, "FindNextUrlCacheEntry failed with error %d\n", FUNC3());
    FUNC9(found, "Committed url cache entry not found during enumeration\n");

    ret = FUNC0(hEnumHandle);
    FUNC9(ret, "FindCloseUrlCache failed with error %d\n", FUNC3());
    FUNC6(FUNC4(), 0, lpCacheEntryInfo);
}