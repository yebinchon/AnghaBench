
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int HCURSOR ;


 int LoadCursor (int ,int ) ;
 scalar_t__ MAKEINTRESOURCE (int) ;
 scalar_t__ fShowSourceBitmaps ;
 int hAppInstance ;
 int iCurDrag ;

HCURSOR
GetMoveCopyCursor()
{
   if (fShowSourceBitmaps) {

      return LoadCursor(hAppInstance, (LPTSTR) MAKEINTRESOURCE(iCurDrag | 1));
   } else {

      return LoadCursor(hAppInstance, (LPTSTR) MAKEINTRESOURCE(iCurDrag & ~1));
   }
}
