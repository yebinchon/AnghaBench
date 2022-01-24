#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cbSize; scalar_t__ hIcon; char* lpszClassName; int /*<<< orphan*/ * hIconSm; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSEXW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  ICONINFO ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/  ClassTest_WndProc ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GCLP_HICON ; 
 int /*<<< orphan*/  GCLP_HICONSM ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICON_BIG ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 int /*<<< orphan*/  ICON_SMALL2 ; 
 scalar_t__ IDI_APPLICATION ; 
 scalar_t__ IDI_QUESTION ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETICON ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    WNDCLASSEXW wcex, ret_wcex;
    WCHAR cls_name[] = {'I','c','o','n','T','e','s','t','C','l','a','s','s',0};
    HWND hwnd;
    HINSTANCE hinst = FUNC7(0);
    HICON hsmicon, hsmallnew;
    ICONINFO icinf;

    FUNC14(&wcex, 0, sizeof wcex);
    wcex.cbSize        = sizeof wcex;
    wcex.lpfnWndProc   = ClassTest_WndProc;
    wcex.hIcon         = FUNC9(0, (LPCWSTR)IDI_APPLICATION);
    wcex.hInstance     = hinst;
    wcex.lpszClassName = cls_name;
    FUNC15(FUNC10(&wcex), "RegisterClassExW returned 0\n");
    hwnd = FUNC1(0, cls_name, NULL, WS_OVERLAPPEDWINDOW,
                        0, 0, 0, 0, NULL, NULL, hinst, 0);
    FUNC15(hwnd != NULL, "Window was not created\n");

    FUNC15(FUNC4(hinst, cls_name, &ret_wcex), "Class info was not retrieved\n");
    FUNC15(wcex.hIcon == ret_wcex.hIcon, "Icons don't match\n");
    FUNC15(ret_wcex.hIconSm != NULL, "hIconSm should be non-zero handle\n");

    hsmicon = (HICON)FUNC5(hwnd, GCLP_HICONSM);
    FUNC15(hsmicon != NULL, "GetClassLong should return non-zero handle\n");

    FUNC15(FUNC11(hwnd, WM_GETICON, ICON_BIG, 0) == 0,
                    "WM_GETICON with ICON_BIG should not return the class icon\n");
    FUNC15(FUNC11(hwnd, WM_GETICON, ICON_SMALL, 0) == 0,
                    "WM_GETICON with ICON_SMALL should not return the class icon\n");
    FUNC15(FUNC11(hwnd, WM_GETICON, ICON_SMALL2, 0) == 0,
                    "WM_GETICON with ICON_SMALL2 should not return the class icon\n");

    hsmallnew = FUNC0(wcex.hIcon, IMAGE_ICON, FUNC8(SM_CXSMICON),
                                                FUNC8(SM_CYSMICON), 0);
    FUNC15(!FUNC12(hwnd, GCLP_HICONSM, (LONG_PTR)hsmallnew),
                    "Previous hIconSm should be zero\n");
    FUNC15(hsmallnew == (HICON)FUNC5(hwnd, GCLP_HICONSM),
                    "Should return explicitly assigned small icon\n");
    FUNC15(!FUNC6(hsmicon, &icinf), "Previous small icon should be destroyed\n");

    FUNC12(hwnd, GCLP_HICONSM, 0);
    hsmicon = (HICON)FUNC5(hwnd, GCLP_HICONSM);
    FUNC15( hsmicon != NULL, "GetClassLong should return non-zero handle\n");

    FUNC12(hwnd, GCLP_HICON, 0);
    FUNC15(!FUNC5(hwnd, GCLP_HICONSM), "GetClassLong should return zero handle\n");

    FUNC12(hwnd, GCLP_HICON, (LONG_PTR)FUNC9(NULL, (LPCWSTR)IDI_QUESTION));
    hsmicon = (HICON)FUNC5(hwnd, GCLP_HICONSM);
    FUNC15(hsmicon != NULL, "GetClassLong should return non-zero handle\n");
    FUNC13(cls_name, hinst);
    FUNC15(FUNC6(hsmicon, &icinf), "Icon should NOT be destroyed\n");

    FUNC2(hsmallnew);
    FUNC3(hwnd);
}