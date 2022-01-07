
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int BS_PUSHBUTTON ;
 int CreateWindow (char*,char const*,int,int ,int,int,int,int ,int ,int ,int *) ;
 int LongToHandle (int) ;
 int WS_CHILD ;
 int g_hInst ;
 int g_hwnd ;
 int xButPos ;
 int yButPos ;

HWND
CreatePushButton(const char* lpWindowName, DWORD xSize, DWORD id,DWORD Style)
    {

    HWND h = CreateWindow("BUTTON",
        lpWindowName,
        WS_CHILD | BS_PUSHBUTTON | Style,
        xButPos,
        yButPos,
        xSize,
        20,
        g_hwnd,
        LongToHandle(id),
        g_hInst,
        ((void*)0)
        );

    yButPos += 21;
    return h;
    }
