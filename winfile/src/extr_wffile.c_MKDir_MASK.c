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
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FSC_MKDIR ; 
 int /*<<< orphan*/  FUNC3 () ; 

DWORD FUNC4(
    LPTSTR pName,
    LPTSTR pSrc)
{
   DWORD dwErr = ERROR_SUCCESS;

   if ((pSrc && *pSrc) ?
         FUNC2(pSrc, pName, NULL) :
         FUNC1(pName, NULL))
   {
      FUNC0(FSC_MKDIR, pName, NULL);
   }
   else
   {
      dwErr = FUNC3();
   }

   return (dwErr);
}