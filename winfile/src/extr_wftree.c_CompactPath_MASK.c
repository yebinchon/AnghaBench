#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cx; } ;
typedef  scalar_t__ TCHAR ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__* LPTSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CHAR_BACKSLASH ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int,TYPE_1__*) ; 
 int MAXPATHLEN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 int FUNC3 (scalar_t__*) ; 
 scalar_t__* szEllipses ; 

BOOL
FUNC4(HDC hDC, LPTSTR lpszPath, DWORD dx)
{
   register INT  len;
   SIZE          sizeF, sizeT;
   LPTSTR        lpEnd;          /* end of the unfixed string */
   LPTSTR        lpFixed;        /* start of text that we always display */
   BOOL          bEllipsesIn;
   TCHAR         szTemp[MAXPATHLEN];
   DWORD         dxEllipses;

   //
   // Does it already fit?
   //
   FUNC0(hDC, lpszPath, FUNC3(lpszPath), &sizeF);
   if (sizeF.cx <= (INT)dx)
      return(TRUE);

   //
   // Search backwards for the '\', and man, it better be there!
   //
   lpFixed = lpszPath + FUNC3(lpszPath) - 1;
   while (*lpFixed != CHAR_BACKSLASH)
      lpFixed--;

   // Save this guy to prevent overlap.
   FUNC2(szTemp, lpFixed);

   lpEnd = lpFixed;
   bEllipsesIn = FALSE;

   FUNC0(hDC, szEllipses, 3, &sizeF);
   dxEllipses = sizeF.cx;

   FUNC0(hDC, lpFixed, FUNC3(lpFixed), &sizeF);

   while (TRUE) {
      FUNC0(hDC, lpszPath, lpEnd - lpszPath, &sizeT);
      len = sizeF.cx + sizeT.cx;

      if (bEllipsesIn)
         len += dxEllipses;

      if (len <= (INT)dx)
         break;

      bEllipsesIn = TRUE;

      if (lpEnd <= lpszPath) {

         // Things didn't fit.

         FUNC2(lpszPath, szEllipses);
         FUNC1(lpszPath, szTemp);
         return(FALSE);
      }

      // Step back a character.
      --lpEnd;
   }

   if (bEllipsesIn) {
      FUNC2(lpEnd, szEllipses);
      FUNC1(lpEnd, szTemp);
   }

   return(TRUE);
}