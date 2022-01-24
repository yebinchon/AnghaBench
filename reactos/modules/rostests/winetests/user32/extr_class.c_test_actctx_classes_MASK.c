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
typedef  int /*<<< orphan*/  wc ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  buff ;
struct TYPE_5__ {char const* lpszClassName; int /*<<< orphan*/  hIcon; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BOOL ;
typedef  scalar_t__ ATOM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ClassTest_WndProc ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 scalar_t__ IDI_APPLICATION ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 

__attribute__((used)) static void FUNC20(void)
{
    static const char main_manifest[] =
        "<assembly xmlns=\"urn:schemas-microsoft-com:asm.v1\" manifestVersion=\"1.0\">"
          "<assemblyIdentity version=\"4.3.2.1\" name=\"Wine.WndClass.Test\" type=\"win32\" />"
          "<file name=\"file.exe\">"
            "<windowClass>MyTestClass</windowClass>"
          "</file>"
        "</assembly>";
    static const char *testclass = "MyTestClass";
    WNDCLASSA wc;
    ULONG_PTR cookie;
    HANDLE context;
    BOOL ret;
    ATOM class;
    HINSTANCE hinst;
    char buff[64];
    HWND hwnd;
    char path[MAX_PATH];

    FUNC9(sizeof(path)/sizeof(path[0]), path);
    FUNC18(path, "actctx_classes.manifest");

    FUNC14(path, main_manifest);
    context = FUNC15(path);
    ret = FUNC3(path);
    FUNC17(ret, "Failed to delete manifest file, error %d.\n", FUNC7());

    ret = FUNC0(context, &cookie);
    FUNC17(ret, "Failed to activate context.\n");

    FUNC16(&wc, 0, sizeof(wc));
    wc.lpfnWndProc = ClassTest_WndProc;
    wc.hIcon = FUNC10(0, (LPCWSTR)IDI_APPLICATION);
    wc.lpszClassName = testclass;

    hinst = FUNC8(0);

    ret = FUNC5(hinst, testclass, &wc);
    FUNC17(!ret, "Expected failure.\n");

    class = FUNC11(&wc);
    FUNC17(class != 0, "Failed to register class.\n");

    /* Class info is available by versioned and regular names. */
    ret = FUNC5(hinst, testclass, &wc);
    FUNC17(ret, "Failed to get class info.\n");

    hwnd = FUNC1(0, testclass, "test", 0, 0, 0, 0, 0, 0, 0, hinst, 0);
    FUNC17(hwnd != NULL, "Failed to create a window.\n");

    ret = FUNC6(hwnd, buff, sizeof(buff));
    FUNC17(ret, "Failed to get class name.\n");
    FUNC17(!FUNC19(buff, testclass), "Unexpected class name.\n");

    ret = FUNC5(hinst, "4.3.2.1!MyTestClass", &wc);
    FUNC17(ret, "Failed to get class info.\n");

    ret = FUNC13(testclass, hinst);
    FUNC17(!ret, "Failed to unregister class.\n");

    ret = FUNC2(0, cookie);
    FUNC17(ret, "Failed to deactivate context.\n");

    ret = FUNC5(hinst, testclass, &wc);
    FUNC17(!ret, "Unexpected ret val %d.\n", ret);

    ret = FUNC5(hinst, "4.3.2.1!MyTestClass", &wc);
    FUNC17(ret, "Failed to get class info.\n");

    ret = FUNC6(hwnd, buff, sizeof(buff));
    FUNC17(ret, "Failed to get class name.\n");
    FUNC17(!FUNC19(buff, testclass), "Unexpected class name.\n");

    FUNC4(hwnd);

    ret = FUNC13("MyTestClass", hinst);
    FUNC17(!ret, "Unexpected ret value %d.\n", ret);

    ret = FUNC13("4.3.2.1!MyTestClass", hinst);
    FUNC17(ret, "Failed to unregister class.\n");

    /* Register versioned class without active context. */
    wc.lpszClassName = "4.3.2.1!MyTestClass";
    class = FUNC11(&wc);
    FUNC17(class != 0, "Failed to register class.\n");

    ret = FUNC0(context, &cookie);
    FUNC17(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = FUNC11(&wc);
    FUNC17(class == 0, "Expected failure.\n");

    ret = FUNC2(0, cookie);
    FUNC17(ret, "Failed to deactivate context.\n");

    ret = FUNC13("4.3.2.1!MyTestClass", hinst);
    FUNC17(ret, "Failed to unregister class.\n");

    /* Only versioned name is registered. */
    ret = FUNC0(context, &cookie);
    FUNC17(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = FUNC11(&wc);
    FUNC17(class != 0, "Failed to register class\n");

    ret = FUNC2(0, cookie);
    FUNC17(ret, "Failed to deactivate context.\n");

    ret = FUNC5(hinst, "MyTestClass", &wc);
    FUNC17(!ret, "Expected failure.\n");

    ret = FUNC5(hinst, "4.3.2.1!MyTestClass", &wc);
    FUNC17(ret, "Failed to get class info.\n");

    ret = FUNC13("4.3.2.1!MyTestClass", hinst);
    FUNC17(ret, "Failed to unregister class.\n");

    /* Register regular name first, it's not considered when versioned name is registered. */
    wc.lpszClassName = "MyTestClass";
    class = FUNC11(&wc);
    FUNC17(class != 0, "Failed to register class.\n");

    ret = FUNC0(context, &cookie);
    FUNC17(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = FUNC11(&wc);
    FUNC17(class != 0, "Failed to register class.\n");

    ret = FUNC2(0, cookie);
    FUNC17(ret, "Failed to deactivate context.\n");

    ret = FUNC13("4.3.2.1!MyTestClass", hinst);
    FUNC17(ret, "Failed to unregister class.\n");

    ret = FUNC13("MyTestClass", hinst);
    FUNC17(ret, "Failed to unregister class.\n");

    FUNC12(context);
}