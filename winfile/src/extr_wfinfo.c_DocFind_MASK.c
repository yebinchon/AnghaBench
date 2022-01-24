#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  szExt; struct TYPE_6__* next; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__** PPDOCBUCKET ;
typedef  TYPE_1__* PDOCBUCKET ;
typedef  int /*<<< orphan*/  LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int EXTSIZ ; 
 TYPE_1__* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

PDOCBUCKET
FUNC6(PPDOCBUCKET ppDocBucket, LPTSTR lpszExt)
{
   PDOCBUCKET pDocBucket;
   TCHAR szExt[EXTSIZ];

   //
   // Disallow long exts; if invalid ppDocBucket, fail
   //
   if (FUNC5(lpszExt) >= EXTSIZ || !ppDocBucket)
      return FALSE;

   FUNC4(szExt, lpszExt);

   FUNC0(szExt);
   FUNC2(szExt);

   for (pDocBucket=ppDocBucket[FUNC1(szExt)]; pDocBucket; pDocBucket = pDocBucket->next) {

      if (!FUNC3(pDocBucket->szExt, szExt)) {

         return pDocBucket;
      }
   }

   return NULL;
}