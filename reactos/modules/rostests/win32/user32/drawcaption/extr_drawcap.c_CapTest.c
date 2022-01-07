
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef int VOID ;
struct TYPE_5__ {int top; int bottom; } ;
typedef TYPE_1__* LPRECT ;
typedef int HWND ;
typedef int HDC ;
typedef int DWORD ;


 int DT_LEFT ;
 int DrawCaption (int ,int ,TYPE_1__*,int) ;
 int DrawText (int ,char*,scalar_t__,TYPE_1__*,int ) ;
 scalar_t__ GetLastError () ;
 int lstrcat (char*,char*) ;
 int lstrcpy (char*,char*) ;
 scalar_t__ lstrlen (char*) ;
 int printf (char*,int) ;

VOID CapTest(HWND hWnd,
 HDC hDc,
 LPRECT pR,
 WCHAR *Text,
 DWORD Flags,
 WCHAR *AddonStr,
 DWORD Addon)
{
 WCHAR Buf[512];

 lstrcpy(Buf, AddonStr);
 if(lstrlen(Buf))lstrcat(Buf, L" | ");
 lstrcat(Buf, Text);

 DrawText( hDc, Buf, lstrlen(Buf), pR, DT_LEFT );

 pR->top+=20;
 pR->bottom+=20;

 if(!DrawCaption(hWnd, hDc, pR, Flags | Addon))
 {
  printf("PAINT: DrawCaption failed: %d\n", (int)GetLastError());
 }

 pR->top+=30;
 pR->bottom+=30;
}
