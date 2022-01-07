
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpszClassName; int * lpszMenuName; int hbrBackground; int hCursor; scalar_t__ hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int GetModuleHandleW (int *) ;
 int GetStockObject (int ) ;
 scalar_t__ IDC_ARROW ;
 int LoadCursorW (int ,int ) ;
 int RegisterClassW (TYPE_1__*) ;
 int WHITE_BRUSH ;
 int parentClassW ;
 int parent_wnd_proc ;

__attribute__((used)) static BOOL register_parent_wnd_class(void)
{
    WNDCLASSW cls;

    cls.style = 0;
    cls.lpfnWndProc = parent_wnd_proc;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = GetModuleHandleW(((void*)0));
    cls.hIcon = 0;
    cls.hCursor = LoadCursorW(0, (LPCWSTR)IDC_ARROW);
    cls.hbrBackground = GetStockObject(WHITE_BRUSH);
    cls.lpszMenuName = ((void*)0);
    cls.lpszClassName = parentClassW;
    return RegisterClassW(&cls);
}
