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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

void FUNC3(void)
{
   DWORD error, retval;

   retval = FUNC0();

   error = FUNC1();

   if (retval)
      FUNC2(retval, "function failed?");
   else
      FUNC2(error == ERROR_ACCESS_DENIED, "function last error wrong expected ERROR_ACCESS_DENIED but got %d\n", (UINT)error);

}