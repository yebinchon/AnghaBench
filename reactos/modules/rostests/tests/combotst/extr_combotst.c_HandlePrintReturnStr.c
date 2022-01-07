
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int RECT ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFERLEN ;
 int GetWindowRect (int ,int *) ;
 int PrintTextXY (char*,int ,int ,int,int ) ;
 int ResultX ;
 int ResultY ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 char* TextBuffer ;
 int g_hwnd ;

__attribute__((used)) static
VOID
HandlePrintReturnStr(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
    LRESULT ret;
    RECT rect;

    TextBuffer[8] = (char)(BUFFERLEN - 8);
    ret = SendMessage(handle,Msg,wParam,lParam);
    GetWindowRect(g_hwnd,&rect);
    PrintTextXY(TextBuffer,ResultX,ResultY,8+(int)ret,rect);
    }
