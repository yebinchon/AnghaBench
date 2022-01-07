
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cls ;
struct TYPE_4__ {int cbSize; char* lpszClassName; void* lpfnWndProc; void* hInstance; int style; } ;
typedef TYPE_1__ WNDCLASSEXA ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HDC ;


 int CS_CLASSDC ;
 int CS_OWNDC ;
 scalar_t__ CreateWindowExA (int ,char*,int *,int,int ,int ,int,int,int ,int ,int ,int *) ;
 void* DefWindowProcA ;
 int DeleteDC (scalar_t__) ;
 int DestroyWindow (scalar_t__) ;
 scalar_t__ GetDC (scalar_t__) ;
 scalar_t__ GetDesktopWindow () ;
 void* GetModuleHandleA (int *) ;
 int GetObjectType (scalar_t__) ;
 scalar_t__ GetWindowDC (scalar_t__) ;
 int OBJ_DC ;
 int RegisterClassExA (TYPE_1__*) ;
 int ReleaseDC (scalar_t__,scalar_t__) ;
 int UnregisterClassA (char*,void*) ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 scalar_t__ broken (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_DeleteDC(void)
{
    HWND hwnd;
    HDC hdc, hdc_test;
    WNDCLASSEXA cls;
    int ret;


    hwnd = CreateWindowExA(0, "static", ((void*)0), WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, ((void*)0));
    ok(hwnd != 0, "CreateWindowExA failed\n");

    hdc = GetDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");

    hdc = GetWindowDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");

    DestroyWindow(hwnd);


    hwnd = GetDesktopWindow();
    ok(hwnd != 0, "GetDesktopWindow failed\n");

    hdc = GetDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");

    hdc = GetWindowDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");


    memset(&cls, 0, sizeof(cls));
    cls.cbSize = sizeof(cls);
    cls.style = CS_CLASSDC;
    cls.hInstance = GetModuleHandleA(((void*)0));
    cls.lpszClassName = "Wine class DC";
    cls.lpfnWndProc = DefWindowProcA;
    ret = RegisterClassExA(&cls);
    ok(ret, "RegisterClassExA failed\n");

    hwnd = CreateWindowExA(0, "Wine class DC", ((void*)0), WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, ((void*)0));
    ok(hwnd != 0, "CreateWindowExA failed\n");

    hdc = GetDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = ReleaseDC(hwnd, hdc);
    ok(ret, "ReleaseDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    hdc_test = hdc;

    hdc = GetWindowDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");

    DestroyWindow(hwnd);

    ret = GetObjectType(hdc_test);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    ret = UnregisterClassA("Wine class DC", GetModuleHandleA(((void*)0)));
    ok(ret, "UnregisterClassA failed\n");

    ret = GetObjectType(hdc_test);
    ok(!ret, "GetObjectType should fail for a deleted DC\n");


    memset(&cls, 0, sizeof(cls));
    cls.cbSize = sizeof(cls);
    cls.style = CS_OWNDC;
    cls.hInstance = GetModuleHandleA(((void*)0));
    cls.lpszClassName = "Wine own DC";
    cls.lpfnWndProc = DefWindowProcA;
    ret = RegisterClassExA(&cls);
    ok(ret, "RegisterClassExA failed\n");

    hwnd = CreateWindowExA(0, "Wine own DC", ((void*)0), WS_POPUP|WS_VISIBLE, 0,0,100,100,
                           0, 0, 0, ((void*)0));
    ok(hwnd != 0, "CreateWindowExA failed\n");

    hdc = GetDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = ReleaseDC(hwnd, hdc);
    ok(ret, "ReleaseDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);

    hdc = GetWindowDC(hwnd);
    ok(hdc != 0, "GetDC failed\n");
    ret = GetObjectType(hdc);
    ok(ret == OBJ_DC, "expected OBJ_DC, got %d\n", ret);
    ret = DeleteDC(hdc);
    ok(ret, "DeleteDC failed\n");
    ret = GetObjectType(hdc);
    ok(!ret || broken(ret) , "GetObjectType should fail for a deleted DC\n");

    DestroyWindow(hwnd);

    ret = UnregisterClassA("Wine own DC", GetModuleHandleA(((void*)0)));
    ok(ret, "UnregisterClassA failed\n");
}
