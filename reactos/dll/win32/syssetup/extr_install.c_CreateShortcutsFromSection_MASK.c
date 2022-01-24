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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,int*,int,int*) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int*,char*) ; 

__attribute__((used)) static BOOL FUNC8(HINF hinf, LPWSTR pszSection, LPCWSTR pszFolder)
{
    INFCONTEXT Context;
    DWORD dwFieldCount;
    INT iIconNr;
    WCHAR szCommand[MAX_PATH];
    WCHAR szName[MAX_PATH];
    WCHAR szDescription[MAX_PATH];
    WCHAR szDirectory[MAX_PATH];

    if (!FUNC2(hinf, pszSection, NULL, &Context))
        return FALSE;

    do
    {
        dwFieldCount = FUNC4(&Context);
        if (dwFieldCount < 3)
            continue;

        if (!FUNC6(&Context, 1, szCommand, FUNC0(szCommand), NULL))
            continue;

        if (!FUNC6(&Context, 2, szName, FUNC0(szName), NULL))
            continue;

        if (!FUNC6(&Context, 3, szDescription, FUNC0(szDescription), NULL))
            continue;

        if (dwFieldCount < 4 || !FUNC5(&Context, 4, &iIconNr))
            iIconNr = -1; /* Special value to indicate no icon */

        if (dwFieldCount < 5 || !FUNC6(&Context, 5, szDirectory, FUNC0(szDirectory), NULL))
            szDirectory[0] = L'\0';

        FUNC7(szName, L".lnk");

        FUNC1(pszFolder, szName, szCommand, szDescription, iIconNr, szDirectory);

    } while (FUNC3(&Context, &Context));

    return TRUE;
}