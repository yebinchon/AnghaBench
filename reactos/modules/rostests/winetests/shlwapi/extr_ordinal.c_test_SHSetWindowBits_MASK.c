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
struct TYPE_3__ {char* lpszClassName; int /*<<< orphan*/ * lpszMenuName; int /*<<< orphan*/ * hbrBackground; int /*<<< orphan*/  hCursor; scalar_t__ hIcon; int /*<<< orphan*/  hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int /*<<< orphan*/  lpfnWndProc; scalar_t__ style; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DefWindowProcA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_WINDOW_HANDLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_ARROW ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC12(void)
{
    HWND hwnd;
    DWORD style, styleold;
    WNDCLASSA clsA;

    clsA.style = 0;
    clsA.lpfnWndProc = DefWindowProcA;
    clsA.cbClsExtra = 0;
    clsA.cbWndExtra = 0;
    clsA.hInstance = FUNC3(NULL);
    clsA.hIcon = 0;
    clsA.hCursor = FUNC6(0, (LPSTR)IDC_ARROW);
    clsA.hbrBackground = NULL;
    clsA.lpszMenuName = NULL;
    clsA.lpszClassName = "Shlwapi test class";
    FUNC7(&clsA);

    hwnd = FUNC0("Shlwapi test class", "Test", WS_VISIBLE, 0, 0, 100, 100,
                          NULL, NULL, FUNC3(NULL), 0);
    FUNC10(FUNC5(hwnd), "failed to create window\n");

    /* null window */
    FUNC8(0xdeadbeef);
    style = FUNC11(NULL, GWL_STYLE, 0, 0);
    FUNC10(style == 0, "expected 0 retval, got %d\n", style);
    FUNC10(FUNC2() == ERROR_INVALID_WINDOW_HANDLE,
        "expected ERROR_INVALID_WINDOW_HANDLE, got %d\n", FUNC2());

    /* zero mask, zero flags */
    styleold = FUNC4(hwnd, GWL_STYLE);
    style = FUNC11(hwnd, GWL_STYLE, 0, 0);
    FUNC10(styleold == style, "expected old style\n");
    FUNC10(styleold == FUNC4(hwnd, GWL_STYLE), "expected to keep old style\n");

    /* test mask */
    styleold = FUNC4(hwnd, GWL_STYLE);
    FUNC10(styleold & WS_VISIBLE, "expected WS_VISIBLE\n");
    style = FUNC11(hwnd, GWL_STYLE, WS_VISIBLE, 0);

    FUNC10(style == styleold, "expected previous style, got %x\n", style);
    FUNC10((FUNC4(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");

    /* test mask, unset style bit used */
    styleold = FUNC4(hwnd, GWL_STYLE);
    style = FUNC11(hwnd, GWL_STYLE, WS_VISIBLE, 0);
    FUNC10(style == styleold, "expected previous style, got %x\n", style);
    FUNC10(styleold == FUNC4(hwnd, GWL_STYLE), "expected to keep old style\n");

    /* set back with flags */
    styleold = FUNC4(hwnd, GWL_STYLE);
    style = FUNC11(hwnd, GWL_STYLE, WS_VISIBLE, WS_VISIBLE);
    FUNC10(style == styleold, "expected previous style, got %x\n", style);
    FUNC10(FUNC4(hwnd, GWL_STYLE) & WS_VISIBLE, "expected updated style\n");

    /* reset and try to set without a mask */
    FUNC11(hwnd, GWL_STYLE, WS_VISIBLE, 0);
    FUNC10((FUNC4(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");
    styleold = FUNC4(hwnd, GWL_STYLE);
    style = FUNC11(hwnd, GWL_STYLE, 0, WS_VISIBLE);
    FUNC10(style == styleold, "expected previous style, got %x\n", style);
    FUNC10((FUNC4(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");

    FUNC1(hwnd);

    FUNC9("Shlwapi test class", FUNC3(NULL));
}