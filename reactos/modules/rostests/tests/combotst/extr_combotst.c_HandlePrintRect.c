
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_4__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFERLEN ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int PrintTextXY (char*,int ,int ,int,TYPE_1__) ;
 int ResultX ;
 int ResultY ;
 int SendMessage (int ,int ,int ,scalar_t__) ;
 char* TextBuffer ;
 int g_hwnd ;
 int htoa (int ,char*) ;

__attribute__((used)) static
VOID
HandlePrintRect(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
    RECT rect = *(RECT*)lParam;
    TextBuffer[8] = (char)(BUFFERLEN - 8);
    SendMessage(handle,Msg,wParam,lParam);

    htoa(rect.top,&TextBuffer[8]);
    TextBuffer[8+8] = ' ';
    htoa(rect.bottom,&TextBuffer[8+8+1]);
    TextBuffer[8+8+8+1] = ' ';
    htoa(rect.left,&TextBuffer[8+8+8+1+1]);
    TextBuffer[8+8+8+8+1+1] = ' ';
    htoa(rect.right,&TextBuffer[8+8+8+8+1+1+1]);

    GetWindowRect(g_hwnd,&rect);
    PrintTextXY(TextBuffer,ResultX,ResultY,8+4*9-1,rect);
    }
