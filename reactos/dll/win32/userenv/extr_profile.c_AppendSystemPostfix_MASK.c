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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ERROR_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 scalar_t__ FUNC7 (int*) ; 

BOOL
FUNC8(LPWSTR lpName,
                    DWORD dwMaxLength)
{
    WCHAR szSystemRoot[MAX_PATH];
    LPWSTR lpszPostfix;
    LPWSTR lpszPtr;

    /* Build profile name postfix */
    if (!FUNC2(L"%SystemRoot%",
                                   szSystemRoot,
                                   FUNC0(szSystemRoot)))
    {
        FUNC1("Error: %lu\n", FUNC3());
        return FALSE;
    }

    FUNC5(szSystemRoot);

    /* Get name postfix */
    szSystemRoot[2] = L'.';
    lpszPostfix = &szSystemRoot[2];
    lpszPtr = lpszPostfix;
    while (*lpszPtr != (WCHAR)0)
    {
        if (*lpszPtr == L'\\')
            *lpszPtr = L'_';
        lpszPtr++;
    }

    if (FUNC7(lpName) + FUNC7(lpszPostfix) + 1 >= dwMaxLength)
    {
        FUNC1("Error: buffer overflow\n");
        FUNC4(ERROR_BUFFER_OVERFLOW);
        return FALSE;
    }

    FUNC6(lpName, lpszPostfix);

    return TRUE;
}