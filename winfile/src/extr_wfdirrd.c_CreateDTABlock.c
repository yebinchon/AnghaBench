
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wParam; } ;
typedef TYPE_1__ MSG ;
typedef int * LPXDTALINK ;
typedef int LPWSTR ;
typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int DirReadAbort (int ,int *,int ) ;
 int EDIRABORT_NULL ;
 int EDIRABORT_READREQUEST ;
 int ERROR_SUCCESS ;
 int GWL_IERROR ;
 int MemDelete (int *) ;
 int PM_NOREMOVE ;
 scalar_t__ PeekMessage (TYPE_1__*,int *,int ,int ,int ) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int * StealDTABlock (int ,int ,int ) ;
 scalar_t__ VK_DOWN ;
 scalar_t__ VK_UP ;
 int WM_KEYDOWN ;

LPXDTALINK
CreateDTABlock(
   HWND hwnd,
   LPWSTR pPath,
   DWORD dwAttribs,
   BOOL bDontSteal)
{
   LPXDTALINK lpStart;
   MSG msg;

   SetWindowLongPtr(hwnd, GWL_IERROR, ERROR_SUCCESS);

   if (!bDontSteal && (lpStart = StealDTABlock(hwnd, pPath, dwAttribs))) {

      if (PeekMessage(&msg,
                      ((void*)0),
                      WM_KEYDOWN,
                      WM_KEYDOWN,
                      PM_NOREMOVE)) {

         if (msg.wParam == VK_UP || msg.wParam == VK_DOWN) {

            MemDelete(lpStart);
            goto Abort;
         }
      }






      DirReadAbort(hwnd, lpStart, EDIRABORT_NULL);

      return lpStart;
   }

Abort:

   DirReadAbort(hwnd, ((void*)0), EDIRABORT_READREQUEST);
   return ((void*)0);
}
