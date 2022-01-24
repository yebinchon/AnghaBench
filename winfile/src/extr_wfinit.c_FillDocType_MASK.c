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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  PPDOCBUCKET ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ CHAR_NULL ; 
 scalar_t__ CHAR_SPACE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szWindows ; 

UINT
FUNC4(
   PPDOCBUCKET ppDoc,
   LPCWSTR pszSection,
   LPCWSTR pszDefault)
{
   LPWSTR pszDocuments = NULL;
   LPWSTR p;
   LPWSTR p2;
   UINT uLen = 0;

   UINT uRetval = 0;

   do {

      uLen += 32;

      if (pszDocuments)
         FUNC3((HLOCAL)pszDocuments);

      pszDocuments = FUNC2(LMEM_FIXED, uLen*sizeof(WCHAR));

      if (!pszDocuments) {
         return 0;
      }

   } while (FUNC1(szWindows,
                             pszSection,
                             pszDefault,
                             pszDocuments,
                             uLen) == (DWORD)uLen-2);

   //
   // Parse through string, searching for blanks
   //
   for (p=pszDocuments; *p; p++) {

      if (CHAR_SPACE == *p) {
         *p = CHAR_NULL;
      }
   }

   for(p2=pszDocuments; p2<p; p2++) {

      if (*p2) {
         if (FUNC0(ppDoc, p2, NULL) == 1)
            uRetval++;

         while(*p2 && p2!=p)
            p2++;
      }
   }

   FUNC3((HLOCAL)pszDocuments);

   return uRetval;
}