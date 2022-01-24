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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPXDTALINK ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  char* LPWCH ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_SETSEL ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char FUNC6 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _TRUNCATE ; 
 scalar_t__ dwLastUpdateTime ; 
 int iDirsRead ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ maxExt ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

INT
FUNC9(HWND hwndLB, LPWSTR szSearchFileSpec, BOOL bRecurse, BOOL bIncludeSubdirs)
{
   INT iRet;
   INT iFileCount;
   WCHAR szFileSpec[MAXPATHLEN+1];
   WCHAR szPathName[MAXPATHLEN+1];
   WCHAR szWildCard[20];
   LPWCH lpszCurrentFileSpecStart;
   LPWCH lpszCurrentFileSpecEnd;
   LPXDTALINK lpStart = NULL;

   //
   // Get the file specification part of the string.
   //
   FUNC7(szFileSpec, szSearchFileSpec);
   FUNC7(szPathName, szSearchFileSpec);

   FUNC5(szFileSpec);
   FUNC4(szPathName);

   lpszCurrentFileSpecEnd = szFileSpec;

   maxExt = 0;

   iDirsRead = 1;
   dwLastUpdateTime = 0;
   iRet = 0;
   iFileCount = 0;

   //
   // This loop runs for each subspec in the search string
   //
   while (*lpszCurrentFileSpecEnd) {
	  lpszCurrentFileSpecStart = lpszCurrentFileSpecEnd;

	  // Find the next separator or the end of the string
	  while ((*lpszCurrentFileSpecEnd) && (*lpszCurrentFileSpecEnd) != ';')
		 lpszCurrentFileSpecEnd++;

	  // If a separator is reached, add the string terminator and move the
	  // end after the terminator for the next cycle
	  if (*lpszCurrentFileSpecEnd == ';') {
		  *lpszCurrentFileSpecEnd = FUNC6('\0');
		  lpszCurrentFileSpecEnd++;
	  }

      // copy the wild card to a temporary buffer sine FixUpFileSpec modifies the buffer
      FUNC8(szWildCard, FUNC0(szWildCard), lpszCurrentFileSpecStart, _TRUNCATE);

	  FUNC1(szWildCard);

	  iRet = FUNC2(hwndLB,
		  szPathName,
		  szWildCard,
		  bRecurse,
		  bIncludeSubdirs,
		  &lpStart,
		  iFileCount,
		  TRUE);

      iFileCount = iRet;
   }

   //
   // Only SetSel if none set already
   //
   if (LB_ERR == FUNC3(hwndLB, LB_GETCURSEL, 0, 0L))
      FUNC3(hwndLB, LB_SETSEL, TRUE, 0L);

   return(iRet);
}