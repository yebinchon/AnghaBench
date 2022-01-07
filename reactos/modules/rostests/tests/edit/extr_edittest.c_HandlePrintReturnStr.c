
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int BUFFERLEN ;
 int PrintTextXY (char*,int ,int ,int) ;
 int ResultX ;
 int ResultY ;
 int SendMessage (int ,int ,int ,int ) ;
 char* TextBuffer ;

__attribute__((used)) static
VOID
HandlePrintReturnStr(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      int ret;
      TextBuffer[8] = (char)(BUFFERLEN - 8);
      ret = SendMessage(handle,Msg,wParam,lParam);
      PrintTextXY(TextBuffer,ResultX,ResultY,8+ret);
    }
