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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ CHAR_BACKSLASH ; 
 scalar_t__ CHAR_DOT ; 
 scalar_t__ CHAR_NULL ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int FUNC6 (scalar_t__*) ; 

BOOL
FUNC7(LPTSTR lpMask, LPTSTR lpFile)
{
   TCHAR szT[MAXPATHLEN*2];
   INT iResStrlen;

   //
   // Get the directory portion (from root to parent) of the destination.
   // (  a:\joe\martha\wilcox.*  ->  a:\joe\martha\ )
   //
   FUNC5( szT, lpMask );
   FUNC4( szT );

   //
   // Add a blackslash if there isn't one already.
   //
   FUNC0(szT);

   // hack fix: Normally, I_LFNEditName will return a:\xxxx\\. when lpFile
   // is "\\" (C-style string, so the first \ is an escape char).
   // Only do the file masking if lpFile is NOT the root directory.
   // If it is, the return value is a:\xxxx\ which is what is expected
   // when a root is merged.

   if (!( CHAR_BACKSLASH == lpFile[0] && CHAR_NULL == lpFile[1] )) {

      iResStrlen = FUNC6( szT );

      FUNC3(lpFile,                  // jack.bat
         FUNC2( lpMask ),             // *.*
         szT + iResStrlen,                   // right after "a:\more\beer\"
         FUNC1(szT) - iResStrlen);

      // If there is a trailing '.', always but always kill it.

      iResStrlen = FUNC6( szT );
      if ((iResStrlen != 0) && CHAR_DOT == szT[iResStrlen - 1])
         szT[ iResStrlen-1 ] = CHAR_NULL;
   }

   FUNC5(lpMask, szT);
   return TRUE;
}