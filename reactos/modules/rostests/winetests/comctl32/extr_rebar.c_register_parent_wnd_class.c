
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int style; char* lpszClassName; int lpfnWndProc; int * lpszMenuName; int hbrBackground; int hCursor; int * hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPCSTR ;
typedef int BOOL ;


 int COLOR_WINDOW ;
 int CS_HREDRAW ;
 int CS_VREDRAW ;
 int GetModuleHandleA (int *) ;
 int GetSysColorBrush (int ) ;
 scalar_t__ IDC_IBEAM ;
 int LoadCursorA (int *,int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int parent_wndproc ;

__attribute__((used)) static BOOL register_parent_wnd_class(void)
{
    WNDCLASSA wc;

    wc.style = CS_HREDRAW | CS_VREDRAW;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = 0;
    wc.hInstance = GetModuleHandleA(((void*)0));
    wc.hIcon = ((void*)0);
    wc.hCursor = LoadCursorA(((void*)0), (LPCSTR)IDC_IBEAM);
    wc.hbrBackground = GetSysColorBrush(COLOR_WINDOW);
    wc.lpszMenuName = ((void*)0);
    wc.lpszClassName = "MyTestWnd";
    wc.lpfnWndProc = parent_wndproc;

    return RegisterClassA(&wc);
}
