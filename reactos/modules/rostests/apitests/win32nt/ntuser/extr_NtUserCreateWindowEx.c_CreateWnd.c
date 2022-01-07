
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLARGE_STRING ;
typedef int HWND ;
typedef int HINSTANCE ;


 int CW_USEDEFAULT ;
 int NtUserCreateWindowEx (int ,int ,int ,int ,int ,int ,int ,int,int,int *,int *,int ,int ,int ,int *) ;
 int WS_CAPTION ;
 int WS_EX_OVERLAPPEDWINDOW ;

__attribute__((used)) static
inline
HWND
CreateWnd(HINSTANCE hinst,
          PLARGE_STRING clsName,
          PLARGE_STRING clsVer,
          PLARGE_STRING wndName)
{
    return NtUserCreateWindowEx(WS_EX_OVERLAPPEDWINDOW,
                                clsName,
                                clsVer,
                                wndName,
                                WS_CAPTION,
                                CW_USEDEFAULT,
                                CW_USEDEFAULT,
                                100,
                                100,
                                ((void*)0),
                                ((void*)0),
                                hinst,
                                0,
                                0,
                                ((void*)0));
}
