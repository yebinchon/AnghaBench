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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DKGRAY_BRUSH ; 
 int /*<<< orphan*/  DST_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const char text[] = "Sample text string";
    HWND hwnd;
    HDC hdc;
    BOOL ret;

    hwnd = FUNC0(0, "static", NULL, WS_POPUP,
                           0, 0, 200, 200, 0, 0, 0, NULL);
    FUNC8(hwnd);

    hdc = FUNC3(hwnd);
    FUNC8(hdc);

    FUNC7(0xdeadbeef);
    ret = FUNC2(hdc, FUNC5(DKGRAY_BRUSH), NULL, (LPARAM)text, FUNC11(text),
                    0, 0, 10, 10, DST_TEXT);
    FUNC10(ret, "DrawState error %u\n", FUNC4());

    FUNC7(0xdeadbeef);
    ret = FUNC2(hdc, FUNC5(DKGRAY_BRUSH), NULL, (LPARAM)text, 0,
                    0, 0, 10, 10, DST_TEXT);
    FUNC10(ret, "DrawState error %u\n", FUNC4());

    FUNC7(0xdeadbeef);
    ret = FUNC2(hdc, FUNC5(DKGRAY_BRUSH), NULL, 0, FUNC11(text),
                    0, 0, 10, 10, DST_TEXT);
    FUNC10(!ret || FUNC9(ret) /* win98 */, "DrawState succeeded\n");
    FUNC10(FUNC4() == 0xdeadbeef, "not expected error %u\n", FUNC4());

    FUNC7(0xdeadbeef);
    ret = FUNC2(hdc, FUNC5(DKGRAY_BRUSH), NULL, 0, 0,
                    0, 0, 10, 10, DST_TEXT);
    FUNC10(!ret || FUNC9(ret) /* win98 */, "DrawState succeeded\n");
    FUNC10(FUNC4() == 0xdeadbeef, "not expected error %u\n", FUNC4());

    FUNC6(hwnd, hdc);
    FUNC1(hwnd);
}