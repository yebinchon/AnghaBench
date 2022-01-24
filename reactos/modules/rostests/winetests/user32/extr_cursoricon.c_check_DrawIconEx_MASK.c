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
typedef  int /*<<< orphan*/  color ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HICON ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, UINT flags, COLORREF background,
                             COLORREF modern_expected, COLORREF legacy_expected, int line)
{
    COLORREF result;
    HICON hicon = FUNC5(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    if (!hicon) return;
    FUNC2(hdc, 0, 0, background);
    FUNC0(hdc, 0, 0, hicon, 1, 1, 0, NULL, flags);
    result = FUNC1(hdc, 0, 0);

    FUNC6 (FUNC4(result, modern_expected) ||         /* Windows 2000 and up */
        FUNC3(FUNC4(result, legacy_expected)),   /* Windows NT 4.0, 9X and below */
        "Overlaying Mask %d on Color %06X with DrawIconEx flags %08X. "
        "Expected a close match to %06X (modern) or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, flags, modern_expected, legacy_expected, result, line);
}