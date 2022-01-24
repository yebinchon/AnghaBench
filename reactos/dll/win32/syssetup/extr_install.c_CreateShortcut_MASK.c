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
typedef  int WCHAR ;
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,char*,int*,int*,int,int*) ; 
 scalar_t__ FUNC3 (int*,int*,scalar_t__) ; 
 scalar_t__ FUNC4 (int*,scalar_t__,int*,int**) ; 
 int MAX_PATH ; 
 int* FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 

__attribute__((used)) static BOOL
FUNC8(
    LPCWSTR pszFolder,
    LPCWSTR pszName,
    LPCWSTR pszCommand,
    LPCWSTR pszDescription,
    INT iIconNr,
    LPCWSTR pszWorkingDir)
{
    DWORD dwLen;
    LPWSTR Ptr;
    LPWSTR lpFilePart;
    WCHAR szPath[MAX_PATH];
    WCHAR szWorkingDirBuf[MAX_PATH];

    /* If no working directory is provided, try to compute a default one */
    if (pszWorkingDir == NULL || pszWorkingDir[0] == L'\0')
    {
        if (FUNC3(pszCommand, szPath, FUNC0(szPath)) == 0)
            FUNC7(szPath, pszCommand);

        dwLen = FUNC4(szPath,
                                 FUNC0(szWorkingDirBuf),
                                 szWorkingDirBuf,
                                 &lpFilePart);
        if (dwLen != 0 && dwLen <= FUNC0(szWorkingDirBuf))
        {
            /* Since those should only be called with (.exe) files,
               lpFilePart has not to be NULL */
            FUNC1(lpFilePart != NULL);

            /* We're only interested in the path. Cut the file name off.
               Also remove the trailing backslash unless the working directory
               is only going to be a drive, i.e. C:\ */
            *(lpFilePart--) = L'\0';
            if (!(lpFilePart - szWorkingDirBuf == 2 &&
                  szWorkingDirBuf[1] == L':' && szWorkingDirBuf[2] == L'\\'))
            {
                *lpFilePart = L'\0';
            }
            pszWorkingDir = szWorkingDirBuf;
        }
    }

    /* If we failed to compute a working directory, just do not use one */
    if (pszWorkingDir && pszWorkingDir[0] == L'\0')
        pszWorkingDir = NULL;

    /* Build the shortcut file name */
    FUNC7(szPath, pszFolder);
    Ptr = FUNC5(szPath);
    FUNC7(Ptr, pszName);

    /* Create the shortcut */
    return FUNC6(FUNC2(szPath,
                                     pszCommand,
                                     L"",
                                     pszWorkingDir,
                                     /* Special value to indicate no icon */
                                     (iIconNr != -1 ? pszCommand : NULL),
                                     iIconNr,
                                     pszDescription));
}