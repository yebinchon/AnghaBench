
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
typedef scalar_t__ TCHAR ;
typedef TYPE_1__ POINT ;
typedef scalar_t__ LONG_PTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;


 scalar_t__ CHAR_NULL ;
 int FS_GETDRIVE ;
 int GWLP_HINSTANCE ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 int MAKELONG (int ,int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,int ,int ) ;
 scalar_t__ hAppInstance ;
 scalar_t__ hwndMDIClient ;

INT
GetDrive(HWND hwnd, POINT pt)
{
   WCHAR chDrive;




   if (GetWindowLongPtr(hwnd, GWLP_HINSTANCE) != (LONG_PTR)hAppInstance)
      return 0;

   chDrive = CHAR_NULL;
   while (hwnd && (hwnd != hwndMDIClient)) {
      chDrive = (TCHAR)SendMessage(hwnd, FS_GETDRIVE, 0, MAKELONG((WORD)pt.x, (WORD)pt.y));

      if (chDrive)
         return chDrive;

      hwnd = GetParent(hwnd);
   }

   return 0;
}
