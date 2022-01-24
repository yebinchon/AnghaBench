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
typedef  int /*<<< orphan*/  stb_bitset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

int *FUNC2(stb_bitset *out, int start, int end)
{
   int *list = NULL;
   int i;
   for (i=start; i < end; ++i)
      if (FUNC1(out, i))
         FUNC0(list, i);
   return list;
}