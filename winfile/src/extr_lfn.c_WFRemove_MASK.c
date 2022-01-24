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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FSC_DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

DWORD
FUNC2(LPTSTR pszFile)
{
   DWORD dwRet;

   dwRet = FUNC1(pszFile);
   if (!dwRet)
      FUNC0(FSC_DELETE,pszFile,NULL);

   return dwRet;
}