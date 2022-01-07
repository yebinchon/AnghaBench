
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * HWND ;


 int * CreateWindowExW (int ,int ,char const*,int,int ,int ,int,int,int ,int *,int ,int *) ;
 int GetDesktopWindow () ;
 int GetModuleHandleW (int *) ;
 int WS_CAPTION ;
 int WS_MAXIMIZEBOX ;
 int WS_MINIMIZEBOX ;
 int WS_SYSMENU ;
 int WS_VISIBLE ;
 int parentClassW ;
 int register_parent_wnd_class () ;

__attribute__((used)) static HWND create_parent_window(void)
{
    static const WCHAR titleW[] = {'S','y','s','l','i','n','k',' ','t','e','s','t',' ','p','a','r','e','n','t',' ','w','i','n','d','o','w',0};
    if (!register_parent_wnd_class())
        return ((void*)0);

    return CreateWindowExW(0, parentClassW, titleW,
                           WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX |
                           WS_MAXIMIZEBOX | WS_VISIBLE,
                           0, 0, 200, 100, GetDesktopWindow(),
                           ((void*)0), GetModuleHandleW(((void*)0)), ((void*)0));
}
