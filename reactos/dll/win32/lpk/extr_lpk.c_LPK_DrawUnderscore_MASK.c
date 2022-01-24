#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  SCRIPT_STRING_ANALYSIS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int LAYOUT_RTL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PS_SOLID ; 
 int /*<<< orphan*/  SIC_COMPLEX ; 
 int /*<<< orphan*/  SSA_GLYPHS ; 
 int /*<<< orphan*/  SSA_RTL ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TA_RTLREADING ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC13(HDC hdc, int x, int y, LPCWSTR str, int count, int offset)
{
    SCRIPT_STRING_ANALYSIS ssa;
    DWORD dwSSAFlags = SSA_GLYPHS;
    int prefix_x;
    int prefix_end;
    int pos;
    SIZE size;
    HPEN hpen;
    HPEN oldPen;
    HRESULT hr = S_FALSE;

    if (offset == -1)
        return;

    if (FUNC8(str, count, SIC_COMPLEX) == S_OK)
    {
        if (FUNC2(hdc) & LAYOUT_RTL || FUNC3(hdc) & TA_RTLREADING)
            dwSSAFlags |= SSA_RTL;

        hr = FUNC9(hdc, str, count, (3 * count / 2 + 16),
                                 -1, dwSSAFlags, -1, NULL, NULL, NULL, NULL, NULL, &ssa);
    }

    if (hr == S_OK)
    {
        FUNC10(ssa, offset, FALSE, &pos);
        prefix_x = x + pos;
        FUNC10(ssa, offset, TRUE, &pos);
        prefix_end = x + pos;
        FUNC11(&ssa);
    }
    else
    {
        FUNC5(hdc, str, offset, &size);
        prefix_x = x + size.cx;
        FUNC5(hdc, str, offset + 1, &size);
        prefix_end = x + size.cx - 1;
    }
    hpen = FUNC0(PS_SOLID, 1, FUNC4(hdc));
    oldPen = FUNC12(hdc, hpen);
    FUNC7(hdc, prefix_x, y, NULL);
    FUNC6(hdc, prefix_end, y);
    FUNC12(hdc, oldPen);
    FUNC1(hpen);
}