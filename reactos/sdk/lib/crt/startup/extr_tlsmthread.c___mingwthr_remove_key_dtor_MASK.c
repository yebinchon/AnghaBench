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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __mingw_usemthread_dll ; 

int
FUNC1 (DWORD key)
{
#ifndef _WIN64
  if (!__mingw_usemthread_dll)
#endif
     return FUNC0 (key);
#ifndef _WIN64
  return 0;
#endif
}