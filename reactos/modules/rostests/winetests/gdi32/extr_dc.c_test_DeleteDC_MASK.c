#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cls ;
struct TYPE_4__ {int cbSize; char* lpszClassName; void* lpfnWndProc; void* hInstance; int /*<<< orphan*/  style; } ;
typedef  TYPE_1__ WNDCLASSEXA ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CS_CLASSDC ; 
 int /*<<< orphan*/  CS_OWNDC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* DefWindowProcA ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int OBJ_DC ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (char*,void*) ; 
 int WS_POPUP ; 
 int WS_VISIBLE ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 

__attribute__((used)) static void FUNC14(void)
{
    HWND hwnd;
    HDC hdc, hdc_test;
    WNDCLASSEXA cls;
    int ret;

    /* window DC */
    hwnd = FUNC0(0, "static", NULL, WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, NULL);
    FUNC13(hwnd != 0, "CreateWindowExA failed\n");

    hdc = FUNC3(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    hdc = FUNC7(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    FUNC2(hwnd);

    /* desktop window DC */
    hwnd = FUNC4();
    FUNC13(hwnd != 0, "GetDesktopWindow failed\n");

    hdc = FUNC3(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    hdc = FUNC7(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    /* CS_CLASSDC */
    FUNC12(&cls, 0, sizeof(cls));
    cls.cbSize = sizeof(cls);
    cls.style = CS_CLASSDC;
    cls.hInstance = FUNC5(NULL);
    cls.lpszClassName = "Wine class DC";
    cls.lpfnWndProc = DefWindowProcA;
    ret = FUNC8(&cls);
    FUNC13(ret, "RegisterClassExA failed\n");

    hwnd = FUNC0(0, "Wine class DC", NULL, WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, NULL);
    FUNC13(hwnd != 0, "CreateWindowExA failed\n");

    hdc = FUNC3(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC9(hwnd, hdc);
    FUNC13(ret, "ReleaseDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    hdc_test = hdc;

    hdc = FUNC7(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    FUNC2(hwnd);

    ret = FUNC6(hdc_test);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    ret = FUNC10("Wine class DC", FUNC5(NULL));
    FUNC13(ret, "UnregisterClassA failed\n");

    ret = FUNC6(hdc_test);
    FUNC13(!ret, "GetObjectType should fail for a deleted DC\n");

    /* CS_OWNDC */
    FUNC12(&cls, 0, sizeof(cls));
    cls.cbSize = sizeof(cls);
    cls.style = CS_OWNDC;
    cls.hInstance = FUNC5(NULL);
    cls.lpszClassName = "Wine own DC";
    cls.lpfnWndProc = DefWindowProcA;
    ret = FUNC8(&cls);
    FUNC13(ret, "RegisterClassExA failed\n");

    hwnd = FUNC0(0, "Wine own DC", NULL, WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, NULL);
    FUNC13(hwnd != 0, "CreateWindowExA failed\n");

    hdc = FUNC3(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC9(hwnd, hdc);
    FUNC13(ret, "ReleaseDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    hdc = FUNC7(hwnd);
    FUNC13(hdc != 0, "GetDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = FUNC1(hdc);
    FUNC13(ret, "DeleteDC failed\n");
    ret = FUNC6(hdc);
    FUNC13(!ret || FUNC11(ret) /* win9x */, "GetObjectType should fail for a deleted DC\n");

    FUNC2(hwnd);

    ret = FUNC10("Wine own DC", FUNC5(NULL));
    FUNC13(ret, "UnregisterClassA failed\n");
}