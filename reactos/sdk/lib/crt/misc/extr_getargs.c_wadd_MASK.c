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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int SIZE ; 
 int __argc ; 
 int /*<<< orphan*/ ** __wargv ; 
 int /*<<< orphan*/ ** FUNC0 (int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 

int FUNC2(wchar_t* name)
{
   wchar_t** _new;
   if ((__argc % SIZE) == 0)
   {
      if (__wargv == NULL)
         _new = FUNC0(sizeof(wchar_t*) * (1 + SIZE));
      else
         _new = FUNC1(__wargv, sizeof(wchar_t*) * (__argc + 1 + SIZE));
      if (_new == NULL)
         return -1;
      __wargv = _new;
   }
   __wargv[__argc++] = name;
   __wargv[__argc] = NULL;
   return 0;
}