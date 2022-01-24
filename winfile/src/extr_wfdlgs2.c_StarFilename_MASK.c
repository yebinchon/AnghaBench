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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;

/* Variables and functions */
 scalar_t__ CHAR_STAR ; 
 scalar_t__* FUNC0 (scalar_t__*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* szStarDotStar ; 

VOID
FUNC3(LPTSTR pszPath)
{
   LPTSTR p;
   TCHAR szTemp[MAXPATHLEN];

   // Remove any leading path information.
   FUNC1(pszPath);

   FUNC2(szTemp, pszPath);

   p=FUNC0(szTemp);

   if (*p) {
      pszPath[0] = CHAR_STAR;
      FUNC2(pszPath+1, p-1);
   } else {
      FUNC2(pszPath, szStarDotStar);
   }
}