
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int PrintTextXY (int *,int ,int ,int) ;
 int ResultX ;
 int ResultY ;
 int SendMessage (int ,int ,int ,int ) ;
 int * TextBuffer ;
 int htoa (int,int *) ;

__attribute__((used)) static
VOID
HandlePrintReturnHex(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      int ret;
      ret = SendMessage(handle,Msg,wParam,lParam);
      htoa(ret,&TextBuffer[8]);
      PrintTextXY(TextBuffer,ResultX,ResultY,16);
    }
