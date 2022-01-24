#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpszFI; int /*<<< orphan*/ * hIcon; int /*<<< orphan*/ * szExt; struct TYPE_5__* next; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__** PPDOCBUCKET ;
typedef  TYPE_1__* PDOCBUCKET ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DOCBUCKET ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int EXTSIZ ; 
 int FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

INT
FUNC8(PPDOCBUCKET ppDocBucket,
         LPTSTR lpszExt,
         LPTSTR lpszFileIcon)
{
   PDOCBUCKET pDocBucket;
   INT iBucket;
   TCHAR szExt[EXTSIZ];


   //
   // Only allow certain lengths; if invalid ppDocBucket, fail
   //
   if (FUNC7(lpszExt) >= EXTSIZ || !ppDocBucket)
      return FALSE;

   //
   // Disallow duplicates
   //
   if (FUNC3(ppDocBucket, lpszExt)) {
      return -1;
   }

   pDocBucket = (PDOCBUCKET) FUNC4(LPTR,sizeof(DOCBUCKET));

   if (!pDocBucket) {
      return 0;
   }

   iBucket = FUNC2(lpszExt);

   //
   // Set up bucket; always char lower
   //
   pDocBucket->next = ppDocBucket[iBucket];

   FUNC1(lpszExt);
   FUNC6(szExt, lpszExt);
   FUNC5(szExt);
   FUNC6(pDocBucket->szExt, szExt);

   pDocBucket->hIcon = NULL;
   pDocBucket->lpszFI = NULL;
   
   if (lpszFileIcon != NULL)
	   pDocBucket->lpszFI = (LPTSTR) FUNC4(LPTR, FUNC0(FUNC7(lpszFileIcon)+1));		
   if (pDocBucket->lpszFI != NULL)
	  FUNC6(pDocBucket->lpszFI, lpszFileIcon);

   ppDocBucket[iBucket] = pDocBucket;

   return 1;
}