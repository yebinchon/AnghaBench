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
 scalar_t__ CHAR_COLON ; 
 int /*<<< orphan*/  FILE_83_CI ; 
 int /*<<< orphan*/  FILE_LONG ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

DWORD
FUNC2(LPTSTR lpName)
{
   if (CHAR_COLON == *(lpName+1)) {
      if (!FUNC1(lpName))
         return FILE_83_CI;
   } else if(FUNC0(lpName))
      return FILE_83_CI;

   return(FILE_LONG);
}