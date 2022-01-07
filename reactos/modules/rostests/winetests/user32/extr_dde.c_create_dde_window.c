
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wcA ;
typedef int WNDPROC ;
struct TYPE_4__ {int hInstance; int lpszClassName; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPCSTR ;
typedef int * HWND ;
typedef int ATOM ;


 int CW_USEDEFAULT ;
 int * CreateWindowExA (int ,int ,int *,int ,int,int,int ,int ,int ,int ,int ,int *) ;
 int GetDesktopWindow () ;
 int GetModuleHandleA (int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int WS_POPUP ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int ,char*) ;

__attribute__((used)) static void create_dde_window(HWND *hwnd, LPCSTR name, WNDPROC wndproc)
{
    WNDCLASSA wcA;
    ATOM aclass;

    memset(&wcA, 0, sizeof(wcA));
    wcA.lpfnWndProc = wndproc;
    wcA.lpszClassName = name;
    wcA.hInstance = GetModuleHandleA(0);
    aclass = RegisterClassA(&wcA);
    ok (aclass, "RegisterClass failed\n");

    *hwnd = CreateWindowExA(0, name, ((void*)0), WS_POPUP,
                            500, 500, CW_USEDEFAULT, CW_USEDEFAULT,
                            GetDesktopWindow(), 0, GetModuleHandleA(0), ((void*)0));
    ok(*hwnd != ((void*)0), "CreateWindowExA failed\n");
}
