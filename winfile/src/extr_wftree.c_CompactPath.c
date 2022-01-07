
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cx; } ;
typedef scalar_t__ TCHAR ;
typedef TYPE_1__ SIZE ;
typedef scalar_t__* LPTSTR ;
typedef scalar_t__ INT ;
typedef int HDC ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ FALSE ;
 int GetTextExtentPoint32 (int ,scalar_t__*,int,TYPE_1__*) ;
 int MAXPATHLEN ;
 scalar_t__ TRUE ;
 int lstrcat (scalar_t__*,scalar_t__*) ;
 int lstrcpy (scalar_t__*,scalar_t__*) ;
 int lstrlen (scalar_t__*) ;
 scalar_t__* szEllipses ;

BOOL
CompactPath(HDC hDC, LPTSTR lpszPath, DWORD dx)
{
   register INT len;
   SIZE sizeF, sizeT;
   LPTSTR lpEnd;
   LPTSTR lpFixed;
   BOOL bEllipsesIn;
   TCHAR szTemp[MAXPATHLEN];
   DWORD dxEllipses;




   GetTextExtentPoint32(hDC, lpszPath, lstrlen(lpszPath), &sizeF);
   if (sizeF.cx <= (INT)dx)
      return(TRUE);




   lpFixed = lpszPath + lstrlen(lpszPath) - 1;
   while (*lpFixed != CHAR_BACKSLASH)
      lpFixed--;


   lstrcpy(szTemp, lpFixed);

   lpEnd = lpFixed;
   bEllipsesIn = FALSE;

   GetTextExtentPoint32(hDC, szEllipses, 3, &sizeF);
   dxEllipses = sizeF.cx;

   GetTextExtentPoint32(hDC, lpFixed, lstrlen(lpFixed), &sizeF);

   while (TRUE) {
      GetTextExtentPoint32(hDC, lpszPath, lpEnd - lpszPath, &sizeT);
      len = sizeF.cx + sizeT.cx;

      if (bEllipsesIn)
         len += dxEllipses;

      if (len <= (INT)dx)
         break;

      bEllipsesIn = TRUE;

      if (lpEnd <= lpszPath) {



         lstrcpy(lpszPath, szEllipses);
         lstrcat(lpszPath, szTemp);
         return(FALSE);
      }


      --lpEnd;
   }

   if (bEllipsesIn) {
      lstrcpy(lpEnd, szEllipses);
      lstrcat(lpEnd, szTemp);
   }

   return(TRUE);
}
