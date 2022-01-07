
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; int * lpszMenuName; int * hbrBackground; int * hCursor; int * hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int HWND ;
typedef int HINSTANCE ;


 int CreateWindowA (char*,char*,int ,int ,int ,int,int,int *,int *,int ,int ) ;
 int DefWindowProcA ;
 int GetModuleHandle (int *) ;
 int RegisterClassA (TYPE_1__*) ;
 int WS_VISIBLE ;

HWND
CreateTestWindow()
{
    HINSTANCE hinst = GetModuleHandle(((void*)0));
    WNDCLASSA wc;

    wc.style = 0;
    wc.lpfnWndProc = DefWindowProcA;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = 0;
    wc.hInstance = hinst;
    wc.hIcon = ((void*)0);
    wc.hCursor = ((void*)0);
    wc.hbrBackground = ((void*)0);
    wc.lpszMenuName = ((void*)0);
    wc.lpszClassName = "testclass";

    RegisterClassA(&wc);
    return CreateWindowA("testclass",
                         "testwnd",
                         WS_VISIBLE,
                         0,
                         0,
                         50,
                         30,
                         ((void*)0),
                         ((void*)0),
                         hinst,
                         0);
}
