#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CHAR_COLON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hwndMDIClient ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC8 (scalar_t__*) ; 

HWND
FUNC9(
    LPTSTR pszPath,
    BOOL bNoFileSpec,
    BOOL bNoTreeWindow)
{
   register HWND hwndT;
   HWND hwndDir;
   LPTSTR pT2;
   TCHAR szTemp[MAXPATHLEN];
   TCHAR szPath[MAXPATHLEN];

   pT2 = pszPath;

   //
   //  Only work with well-formed paths.
   //
   if ((FUNC8(pT2) < 3) || (pT2[1] != CHAR_COLON))
   {
      return (NULL);
   }

   //
   //  Copy path to temp buffer and remove the filespec (if necessary).
   //
   FUNC7(szPath, pT2);

   if (!bNoFileSpec)
   {
      FUNC5(szPath);
   }

   //
   //  Cycle through all of the windows until a match is found.
   //
   for (hwndT = FUNC2(hwndMDIClient, GW_CHILD);
        hwndT;
        hwndT = FUNC2(hwndT, GW_HWNDNEXT))
   {
      if ((hwndDir = FUNC3(hwndT)))
      {
         //
         //  Get the Window's path information and remove the file spec.
         //
         FUNC1(hwndT, szTemp, FUNC0(szTemp));
         FUNC5(szTemp);

         //
         //  Compare the two paths.
         //
         if (!FUNC6(szTemp, szPath) &&
            (!bNoTreeWindow || !FUNC4(hwndT)))
         {
            break;
         }
      }
   }

   return (hwndT);
}