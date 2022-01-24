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
typedef  int /*<<< orphan*/  stb_ps ;

/* Variables and functions */
 void** FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 

int FUNC3(stb_ps *bigger, stb_ps *smaller)
{
   int i, listlen;
   void **list = FUNC0(smaller, &listlen);
   for(i=0; i < listlen; ++i)
      if (FUNC1(list[i]))
         if (!FUNC2(bigger, list[i]))
            return 0;
   return 1;
}