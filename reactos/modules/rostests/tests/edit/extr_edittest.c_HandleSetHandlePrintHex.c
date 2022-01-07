
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WPARAM ;
typedef int VOID ;
typedef scalar_t__ LPVOID ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HLOCAL ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int EM_GETHANDLE ;
 int EM_SETHANDLE ;
 int LMEM_MOVEABLE ;
 int LMEM_ZEROINIT ;
 scalar_t__ LocalAlloc (int,int) ;
 int LocalFree (int ) ;
 scalar_t__ LocalHandle (scalar_t__) ;
 scalar_t__ LocalLock (scalar_t__) ;
 int LocalUnlock (scalar_t__) ;
 int NewText ;
 int NewTextW ;
 int PrintTextXY (int *,int ,int ,int) ;
 int ResultX ;
 int ResultY ;
 int SendMessage (int ,int ,int ,long) ;
 int * TextBuffer ;
 scalar_t__ UnicodeUsed ;
 int htoa (int,int *) ;
 int strcpy_ (char*,int ) ;
 int strcpyw_ (int *,int ) ;

__attribute__((used)) static
VOID
HandleSetHandlePrintHex(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      LPVOID pMem;
      HANDLE hNewBuffer;
      int ret;

      LocalFree((HLOCAL)SendMessage(handle, EM_GETHANDLE, 0, 0L));
      if (UnicodeUsed)
          {
            hNewBuffer = LocalAlloc(LMEM_MOVEABLE | LMEM_ZEROINIT, 100);
            pMem = LocalLock(hNewBuffer);
            strcpyw_((wchar_t*)pMem,NewTextW);
          }
      else
          {
            hNewBuffer = LocalAlloc(LMEM_MOVEABLE | LMEM_ZEROINIT,50);
            pMem = LocalLock(hNewBuffer);
            strcpy_((char*)pMem,NewText);
          }

      LocalUnlock(pMem);
      hNewBuffer = LocalHandle(pMem);


      ret = SendMessage(handle, EM_SETHANDLE, (WPARAM)hNewBuffer, 0L);

      htoa(ret,&TextBuffer[8]);
      PrintTextXY(TextBuffer,ResultX,ResultY,16);
    }
