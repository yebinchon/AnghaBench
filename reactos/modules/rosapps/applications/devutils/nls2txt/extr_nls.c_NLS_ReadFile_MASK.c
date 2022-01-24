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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  int /*<<< orphan*/  PCPTABLEINFO ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

PUSHORT
FUNC7(const WCHAR *pszFile, PCPTABLEINFO CodePageTable)
{
    HANDLE hFile;

    hFile = FUNC1(pszFile, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (hFile != INVALID_HANDLE_VALUE)
    {
        PUSHORT pData;
        DWORD dwRead;
        DWORD dwFileSize;

        dwFileSize = FUNC2(hFile, NULL);
        pData = FUNC6(dwFileSize);
        if (pData != NULL)
        {
            if (FUNC4(hFile, pData, dwFileSize, &dwRead, NULL) != FALSE)
            {
                FUNC3(pData, CodePageTable);
                FUNC0(hFile);

                return pData;
            }

            FUNC5(pData);
        }

        FUNC0(hFile);
    }

    return NULL;
}