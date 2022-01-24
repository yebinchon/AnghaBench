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
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int LPK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int USERLPK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(HDC hdc, int ypos, LPCWSTR str, DWORD dwFlags, int testtype)
{
    WCHAR Result[100];
    INT ret = 0;

    if (testtype == LPK)
    {
        ret = FUNC0(hdc, 0, ypos, str, (!str) ? 10 : FUNC4(str), dwFlags);
        FUNC1(Result, 100, L"Return Value = %d", ret);
        FUNC2(hdc, 200, ypos, Result, FUNC4(Result));
    }
    else if (testtype == USERLPK)
    {
        ret = FUNC3(hdc, 400, ypos, str, FUNC4(str), dwFlags);
        FUNC1(Result, 100, L"Return Value = %d", ret);
        FUNC2(hdc, 600, ypos, Result, FUNC4(Result));
    }

}