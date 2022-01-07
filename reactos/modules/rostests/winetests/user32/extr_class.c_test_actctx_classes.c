
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wc ;
typedef int path ;
typedef int buff ;
struct TYPE_5__ {char const* lpszClassName; int hIcon; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int ULONG_PTR ;
typedef int LPCWSTR ;
typedef int * HWND ;
typedef int HINSTANCE ;
typedef int HANDLE ;
typedef int BOOL ;
typedef scalar_t__ ATOM ;


 int ActivateActCtx (int ,int *) ;
 int ClassTest_WndProc ;
 int * CreateWindowExA (int ,char const*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DeactivateActCtx (int ,int ) ;
 int DeleteFileA (char*) ;
 int DestroyWindow (int *) ;
 int GetClassInfoA (int ,char const*,TYPE_1__*) ;
 int GetClassNameA (int *,char*,int) ;
 int GetLastError () ;
 int GetModuleHandleW (int ) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ IDI_APPLICATION ;
 int LoadIconW (int ,int ) ;
 int MAX_PATH ;
 scalar_t__ RegisterClassA (TYPE_1__*) ;
 int ReleaseActCtx (int ) ;
 int UnregisterClassA (char const*,int ) ;
 int create_manifest_file (char*,char const*) ;
 int create_test_actctx (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void test_actctx_classes(void)
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

    GetTempPathA(sizeof(path)/sizeof(path[0]), path);
    strcat(path, "actctx_classes.manifest");

    create_manifest_file(path, main_manifest);
    context = create_test_actctx(path);
    ret = DeleteFileA(path);
    ok(ret, "Failed to delete manifest file, error %d.\n", GetLastError());

    ret = ActivateActCtx(context, &cookie);
    ok(ret, "Failed to activate context.\n");

    memset(&wc, 0, sizeof(wc));
    wc.lpfnWndProc = ClassTest_WndProc;
    wc.hIcon = LoadIconW(0, (LPCWSTR)IDI_APPLICATION);
    wc.lpszClassName = testclass;

    hinst = GetModuleHandleW(0);

    ret = GetClassInfoA(hinst, testclass, &wc);
    ok(!ret, "Expected failure.\n");

    class = RegisterClassA(&wc);
    ok(class != 0, "Failed to register class.\n");


    ret = GetClassInfoA(hinst, testclass, &wc);
    ok(ret, "Failed to get class info.\n");

    hwnd = CreateWindowExA(0, testclass, "test", 0, 0, 0, 0, 0, 0, 0, hinst, 0);
    ok(hwnd != ((void*)0), "Failed to create a window.\n");

    ret = GetClassNameA(hwnd, buff, sizeof(buff));
    ok(ret, "Failed to get class name.\n");
    ok(!strcmp(buff, testclass), "Unexpected class name.\n");

    ret = GetClassInfoA(hinst, "4.3.2.1!MyTestClass", &wc);
    ok(ret, "Failed to get class info.\n");

    ret = UnregisterClassA(testclass, hinst);
    ok(!ret, "Failed to unregister class.\n");

    ret = DeactivateActCtx(0, cookie);
    ok(ret, "Failed to deactivate context.\n");

    ret = GetClassInfoA(hinst, testclass, &wc);
    ok(!ret, "Unexpected ret val %d.\n", ret);

    ret = GetClassInfoA(hinst, "4.3.2.1!MyTestClass", &wc);
    ok(ret, "Failed to get class info.\n");

    ret = GetClassNameA(hwnd, buff, sizeof(buff));
    ok(ret, "Failed to get class name.\n");
    ok(!strcmp(buff, testclass), "Unexpected class name.\n");

    DestroyWindow(hwnd);

    ret = UnregisterClassA("MyTestClass", hinst);
    ok(!ret, "Unexpected ret value %d.\n", ret);

    ret = UnregisterClassA("4.3.2.1!MyTestClass", hinst);
    ok(ret, "Failed to unregister class.\n");


    wc.lpszClassName = "4.3.2.1!MyTestClass";
    class = RegisterClassA(&wc);
    ok(class != 0, "Failed to register class.\n");

    ret = ActivateActCtx(context, &cookie);
    ok(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = RegisterClassA(&wc);
    ok(class == 0, "Expected failure.\n");

    ret = DeactivateActCtx(0, cookie);
    ok(ret, "Failed to deactivate context.\n");

    ret = UnregisterClassA("4.3.2.1!MyTestClass", hinst);
    ok(ret, "Failed to unregister class.\n");


    ret = ActivateActCtx(context, &cookie);
    ok(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = RegisterClassA(&wc);
    ok(class != 0, "Failed to register class\n");

    ret = DeactivateActCtx(0, cookie);
    ok(ret, "Failed to deactivate context.\n");

    ret = GetClassInfoA(hinst, "MyTestClass", &wc);
    ok(!ret, "Expected failure.\n");

    ret = GetClassInfoA(hinst, "4.3.2.1!MyTestClass", &wc);
    ok(ret, "Failed to get class info.\n");

    ret = UnregisterClassA("4.3.2.1!MyTestClass", hinst);
    ok(ret, "Failed to unregister class.\n");


    wc.lpszClassName = "MyTestClass";
    class = RegisterClassA(&wc);
    ok(class != 0, "Failed to register class.\n");

    ret = ActivateActCtx(context, &cookie);
    ok(ret, "Failed to activate context.\n");

    wc.lpszClassName = "MyTestClass";
    class = RegisterClassA(&wc);
    ok(class != 0, "Failed to register class.\n");

    ret = DeactivateActCtx(0, cookie);
    ok(ret, "Failed to deactivate context.\n");

    ret = UnregisterClassA("4.3.2.1!MyTestClass", hinst);
    ok(ret, "Failed to unregister class.\n");

    ret = UnregisterClassA("MyTestClass", hinst);
    ok(ret, "Failed to unregister class.\n");

    ReleaseActCtx(context);
}
