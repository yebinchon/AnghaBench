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
typedef  int /*<<< orphan*/  HICON ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXICON ; 
 int /*<<< orphan*/  SM_CYICON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void FUNC8(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, COLORREF background,
                           COLORREF modern_expected, COLORREF legacy_expected, int line)
{
    COLORREF result;
    HICON hicon = FUNC6(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    if (!hicon) return;
    FUNC3(hdc, 0, 0, background);
    FUNC3(hdc, FUNC2(SM_CXICON)-1, FUNC2(SM_CYICON)-1, background);
    FUNC3(hdc, FUNC2(SM_CXICON), FUNC2(SM_CYICON), background);
    FUNC0(hdc, 0, 0, hicon);
    result = FUNC1(hdc, 0, 0);

    FUNC7 (FUNC5(result, modern_expected) ||         /* Windows 2000 and up */
        FUNC4(FUNC5(result, legacy_expected)),   /* Windows NT 4.0, 9X and below */
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected a close match to %06X (modern), or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, modern_expected, legacy_expected, result, line);

    result = FUNC1(hdc, FUNC2(SM_CXICON)-1, FUNC2(SM_CYICON)-1);

    FUNC7 (FUNC5(result, modern_expected) ||         /* Windows 2000 and up */
        FUNC4(FUNC5(result, legacy_expected)),   /* Windows NT 4.0, 9X and below */
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected a close match to %06X (modern), or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, modern_expected, legacy_expected, result, line);

    result = FUNC1(hdc, FUNC2(SM_CXICON), FUNC2(SM_CYICON));

    FUNC7 (FUNC5(result, background),
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected unchanged background color %06X. Got %06X from line %d\n",
        maskvalue, color, background, result, line);
}