
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cliA ;
struct TYPE_4__ {int style; int cbClsExtra; int cbWndExtra; int lpszMenuName; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LONG_PTR ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int DestroyWindow (scalar_t__) ;
 int GWL_EXSTYLE ;
 int GetClassInfoA (int ,char*,TYPE_1__*) ;
 int GetClassNameA (scalar_t__,char*,int) ;
 int GetModuleHandleA (char*) ;
 int GetWindowLongA (scalar_t__,int ) ;
 int GetWindowLongPtrA (scalar_t__,int ) ;
 int WS_EX_LAYOUTRTL ;
 int WS_EX_TOOLWINDOW ;
 int WS_EX_WINDOWEDGE ;
 scalar_t__ lstrcmpA (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pSHCreateWorkerWindowA (int ,int *,int,int ,int ,int) ;

__attribute__((used)) static void test_SHCreateWorkerWindowA(void)
{
    WNDCLASSA cliA;
    char classA[20];
    HWND hwnd;
    LONG_PTR ret;
    BOOL res;

    hwnd = pSHCreateWorkerWindowA(0, ((void*)0), 0, 0, 0, 0);
    ok(hwnd != 0, "expected window\n");

    GetClassNameA(hwnd, classA, 20);
    ok(lstrcmpA(classA, "WorkerA") == 0, "expected WorkerA class, got %s\n", classA);

    ret = GetWindowLongPtrA(hwnd, 0);
    ok(ret == 0, "got %ld\n", ret);


    memset(&cliA, 0, sizeof(cliA));
    res = GetClassInfoA(GetModuleHandleA("shlwapi.dll"), "WorkerA", &cliA);
    ok(res, "failed to get class info\n");
    ok(cliA.style == 0, "got 0x%08x\n", cliA.style);
    ok(cliA.cbClsExtra == 0, "got %d\n", cliA.cbClsExtra);
    ok(cliA.cbWndExtra == sizeof(LONG_PTR), "got %d\n", cliA.cbWndExtra);
    ok(cliA.lpszMenuName == 0, "got %s\n", cliA.lpszMenuName);

    DestroyWindow(hwnd);


    hwnd = pSHCreateWorkerWindowA(0, ((void*)0), 0, 0, 0, 0xdeadbeef);
    ok(hwnd != 0, "expected window\n");

    GetClassNameA(hwnd, classA, 20);
    ok(lstrcmpA(classA, "WorkerA") == 0, "expected WorkerA class, got %s\n", classA);

    ret = GetWindowLongPtrA(hwnd, 0);
    ok(ret == 0xdeadbeef, "got %ld\n", ret);


    ret = GetWindowLongA(hwnd, GWL_EXSTYLE);
    ok(ret == WS_EX_WINDOWEDGE ||
       ret == (WS_EX_WINDOWEDGE|WS_EX_LAYOUTRTL) , "0x%08lx\n", ret);

    DestroyWindow(hwnd);

    hwnd = pSHCreateWorkerWindowA(0, ((void*)0), WS_EX_TOOLWINDOW, 0, 0, 0);
    ret = GetWindowLongA(hwnd, GWL_EXSTYLE);
    ok(ret == (WS_EX_WINDOWEDGE|WS_EX_TOOLWINDOW) ||
       ret == (WS_EX_WINDOWEDGE|WS_EX_TOOLWINDOW|WS_EX_LAYOUTRTL) , "0x%08lx\n", ret);
    DestroyWindow(hwnd);
}
