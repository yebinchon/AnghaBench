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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LPWSTR
FUNC6(HWND hwndTarget, INT *pcchTextW, INT cchExtra)
{
    LPWSTR pszTextW = NULL, pszTextNewW;
    INT cchNonExtra, cchTextW = *pcchTextW;

    pszTextNewW = FUNC2(FUNC1(), 0, cchTextW * sizeof(WCHAR));
    for (;;)
    {
        if (!pszTextNewW)
        {
            FUNC0("HeapAlloc failed\n");
            if (pszTextW)
                FUNC3(FUNC1(), 0, pszTextW);
            return NULL;
        }
        pszTextW = pszTextNewW;

        cchNonExtra = cchTextW - cchExtra;
        if (FUNC5(hwndTarget, pszTextW,
                                  cchNonExtra) < cchNonExtra - 1)
        {
            break;
        }

        cchTextW *= 2;
        pszTextNewW = FUNC4(FUNC1(), 0, pszTextW,
                                  cchTextW * sizeof(WCHAR));
    }

    *pcchTextW = cchTextW;
    return pszTextW;
}