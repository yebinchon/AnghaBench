
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int BS_AUTOCHECKBOX ;
 int CreateWindowEx (int ,char*,char const*,int,int ,int,int ,int,int ,int ,int ,int *) ;
 int UlongToHandle (int ) ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int g_hInst ;
 int g_hwnd ;
 int xButPos ;
 int yButPos ;

HWND
CreateCheckButton(const char* lpWindowName, DWORD xSize, DWORD id)
    {
     HWND h;
  h = CreateWindowEx(0,
     "BUTTON",
                          lpWindowName,
     WS_CHILD | WS_VISIBLE | BS_AUTOCHECKBOX,
     xButPos,
            yButPos,
            xSize,
            20,
     g_hwnd,
     UlongToHandle(id),
     g_hInst,
     ((void*)0)
                         );
     yButPos += 21;
 return h;
    }
