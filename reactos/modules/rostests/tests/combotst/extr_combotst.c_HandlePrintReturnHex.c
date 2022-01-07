
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


 int GetWindowRect (int ,int *) ;
 int PrintTextXY (int *,int ,int ,int,int ) ;
 int ResultX ;
 int ResultY ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int * TextBuffer ;
 int g_hwnd ;
 int htoa (unsigned int,int *) ;

__attribute__((used)) static
VOID
HandlePrintReturnHex(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
    LRESULT ret;
    RECT rect;
    ret = SendMessage(handle,Msg,wParam,lParam);
    htoa((unsigned int)ret,&TextBuffer[8]);
    GetWindowRect(g_hwnd,&rect);
    PrintTextXY(TextBuffer,ResultX,ResultY,16,rect);
    }
