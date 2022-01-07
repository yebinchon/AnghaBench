
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;


 int CW_USEDEFAULT ;
 int * CreateWindowExA (int ,char*,char*,int ,int ,int ,int,int,int *,int *,int ,int ) ;
 int GetModuleHandleA (int *) ;
 int GetSystemMetrics (int ) ;
 int SM_CXSIZEFRAME ;
 int SM_CYCAPTION ;
 int SM_CYSIZEFRAME ;
 int SW_SHOW ;
 int ShowWindow (int *,int ) ;
 int WS_OVERLAPPEDWINDOW ;
 int register_parent_wnd_class () ;

__attribute__((used)) static HWND create_parent_window(void)
{
    HWND hwnd;

    if (!register_parent_wnd_class()) return ((void*)0);

    hwnd = CreateWindowExA(0, "MyTestWnd", "Blah", WS_OVERLAPPEDWINDOW,
      CW_USEDEFAULT, CW_USEDEFAULT, 672+2*GetSystemMetrics(SM_CXSIZEFRAME),
      226+GetSystemMetrics(SM_CYCAPTION)+2*GetSystemMetrics(SM_CYSIZEFRAME),
      ((void*)0), ((void*)0), GetModuleHandleA(((void*)0)), 0);

    ShowWindow(hwnd, SW_SHOW);
    return hwnd;
}
