
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HDC ;
typedef int DWORD ;


 int GetDC (int ) ;
 int GetStockObject (int ) ;
 int ReleaseDC (int ,int ) ;
 int ResultX ;
 int ResultY ;
 int SYSTEM_FIXED_FONT ;
 int SelectObject (int ,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 char* TextBuffer ;
 int TextOut (int ,int ,int ,char*,int) ;
 int ValidateRect (int ,int *) ;
 int g_hwnd ;
 int rect ;

__attribute__((used)) static
VOID
HandlePrintPasswdChar(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
      HDC hdc;
      int ret = SendMessage(handle,Msg,wParam,lParam);

      int s;

      if (ret)
          {
            s = 1;
            TextBuffer[8] = (char)(ret);
          }
      else
          {
            TextBuffer[8] = 'N';
            TextBuffer[9] = 'U';
            TextBuffer[10] = 'L';
            TextBuffer[11] = 'L';
            s = 4;
          }

      hdc = GetDC (g_hwnd);
      SelectObject (hdc, GetStockObject (SYSTEM_FIXED_FONT));

      TextOut (hdc,ResultX ,ResultY,TextBuffer,8+s);
      ReleaseDC (g_hwnd, hdc);
      ValidateRect (g_hwnd, &rect);
    }
