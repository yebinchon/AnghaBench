#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {long dwFileAttributes; } ;
struct TYPE_7__ {scalar_t__ hFindFile; int nSpaceLeft; long dwAttrFilter; TYPE_5__ fd; scalar_t__ err; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__* LPTSTR ;
typedef  TYPE_1__* LPLFNDTA ;
typedef  int INT ;
typedef  long DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 long ATTR_ARCHIVE ; 
 long ATTR_COMPRESSED ; 
 long ATTR_DIR ; 
 long ATTR_ENCRYPTED ; 
 long ATTR_HS ; 
 long ATTR_NORMAL ; 
 long ATTR_NOT_INDEXED ; 
 long ATTR_READONLY ; 
 long ATTR_REPARSE_POINT ; 
 long ATTR_TEMPORARY ; 
 long ATTR_USED ; 
 scalar_t__ CHAR_BACKSLASH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FindExInfoStandard ; 
 int /*<<< orphan*/  FindExSearchLimitToDirectories ; 
 scalar_t__ FUNC0 (scalar_t__*,TYPE_5__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__*) ; 

BOOL
FUNC8(
   LPLFNDTA lpFind,
   LPTSTR lpName,
   DWORD dwAttrFilter)
{
   INT    nLen;
   LPTSTR pEnd;

   //
   // We OR these additional bits because of the way DosFindFirst works
   // in Windows. It returns the files that are specified by the attrfilter
   // and ORDINARY files too.
   //

   PVOID oldValue;
   FUNC5(&oldValue);

   if ((dwAttrFilter & ~(ATTR_DIR | ATTR_HS)) == 0)
   {
	   // directories only (hidden or not)
	   lpFind->hFindFile = FUNC1(lpName, FindExInfoStandard, &lpFind->fd, FindExSearchLimitToDirectories, NULL, 0);
   }
   else
   {
	   // normal case: directories and files
	   lpFind->hFindFile = FUNC0(lpName, &lpFind->fd);
   }

   if (lpFind->hFindFile == INVALID_HANDLE_VALUE) {
       lpFind->err = FUNC2();
   } else {
       lpFind->err = 0;
   }

   // add in attr_* which we want to include in the match even though the caller didn't request them.
   dwAttrFilter |= ATTR_ARCHIVE | ATTR_READONLY | ATTR_NORMAL | ATTR_REPARSE_POINT |
	   ATTR_TEMPORARY | ATTR_COMPRESSED | ATTR_ENCRYPTED | ATTR_NOT_INDEXED;

   lpFind->fd.dwFileAttributes &= ATTR_USED;

   FUNC6(oldValue);

   //
   // Keep track of length
   //
   nLen = FUNC7(lpName);
   pEnd = &lpName[nLen-1];

   while (CHAR_BACKSLASH != *pEnd) {
      pEnd--;
      nLen--;
   }

   lpFind->nSpaceLeft = MAXPATHLEN-nLen-1;

   if (lpFind->hFindFile != INVALID_HANDLE_VALUE) {
      lpFind->dwAttrFilter = dwAttrFilter;
      if ((~dwAttrFilter & lpFind->fd.dwFileAttributes) == 0L ||
         FUNC4(lpFind)) {
         return(TRUE);
      } else {
         FUNC3(lpFind);
         return(FALSE);
      }
   } else {
      return(FALSE);
   }
}