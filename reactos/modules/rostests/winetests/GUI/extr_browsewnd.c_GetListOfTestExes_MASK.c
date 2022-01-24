#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int WCHAR ;
struct TYPE_7__ {int* lpExeList; } ;
typedef  TYPE_2__* PMAIN_WND_INFO ;
typedef  int* LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXE_SEARCH_DIR ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC1 (int*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 int FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int* FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*) ; 
 int FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static INT
FUNC13(PMAIN_WND_INFO pInfo)
{
    HANDLE hFind;
    WIN32_FIND_DATAW findFileData;
    WCHAR szExePath[MAX_PATH];
    LPWSTR ptr;
    INT numFiles = 0;
    INT len;

    len = FUNC3(MAX_PATH, szExePath);
    if (!len) return 0;

    FUNC12(szExePath, EXE_SEARCH_DIR, MAX_PATH - (len + 1));

    numFiles = FUNC5(szExePath);
    if (!numFiles) return 0;

    pInfo->lpExeList = FUNC7(FUNC6(),
                                 0,
                                 numFiles * (MAX_PATH * sizeof(WCHAR)));
    if (!pInfo->lpExeList)
        return 0;

    hFind = FUNC1(szExePath,
                           &findFileData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC0(FUNC4());
        FUNC8(FUNC6(), 0, pInfo->lpExeList);
        return 0;
    }

    /* remove the glob */
    ptr = FUNC9(szExePath, L'*');
    if (ptr)
        *ptr = L'\0';

    /* don't modify our base pointer */
    ptr = pInfo->lpExeList;

    do
    {
        if (!(findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
        {
            /* set the path */
            FUNC10(ptr, szExePath);

            /* tag the file onto the path */
            len = MAX_PATH - (FUNC11(ptr) + 1);
            FUNC12(ptr, findFileData.cFileName, len);

            /* move the pointer along by MAX_PATH */
            ptr += MAX_PATH;
        }
    } while (FUNC2(hFind, &findFileData) != 0);

    return numFiles;
}