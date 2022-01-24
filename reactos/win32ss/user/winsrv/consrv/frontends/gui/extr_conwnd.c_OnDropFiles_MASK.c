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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PCONSRV_CONSOLE ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  HDROP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static VOID
FUNC7(PCONSRV_CONSOLE Console, HDROP hDrop)
{
    LPWSTR pszPath;
    WCHAR szPath[MAX_PATH + 2];

    szPath[0] = L'"';

    FUNC2(hDrop, 0, &szPath[1], FUNC0(szPath) - 1);
    FUNC1(hDrop);

    if (FUNC5(&szPath[1], L' ') != NULL)
    {
        FUNC4(szPath, FUNC0(szPath), L"\"");
        pszPath = szPath;
    }
    else
    {
        pszPath = &szPath[1];
    }

    FUNC3(Console, pszPath, FUNC6(pszPath));
}