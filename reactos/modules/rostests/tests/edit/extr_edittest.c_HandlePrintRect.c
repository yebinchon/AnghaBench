
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_2__ {int right; int left; int bottom; int top; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFERLEN ;
 int PrintTextXY (char*,int ,int ,int) ;
 int ResultX ;
 int ResultY ;
 int SendMessage (int ,int ,int ,int ) ;
 char* TextBuffer ;
 int htoa (int ,char*) ;
 TYPE_1__ rect ;

__attribute__((used)) static
VOID
HandlePrintRect(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      TextBuffer[8] = (char)(BUFFERLEN - 8);
      SendMessage(handle,Msg,wParam,lParam);

      htoa(rect.top,&TextBuffer[8]);
      TextBuffer[8+8] = ' ';
      htoa(rect.bottom,&TextBuffer[8+8+1]);
      TextBuffer[8+8+8+1] = ' ';
      htoa(rect.left,&TextBuffer[8+8+8+1+1]);
      TextBuffer[8+8+8+8+1+1] = ' ';
      htoa(rect.right,&TextBuffer[8+8+8+8+1+1+1]);

      PrintTextXY(TextBuffer,ResultX,ResultY,8+4*9-1);
    }
