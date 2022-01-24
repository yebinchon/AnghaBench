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

/* Variables and functions */
 int FUNC0 () ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

void FUNC3(void *p, size_t n, size_t sz, unsigned long seed)
{
   char *a;
   unsigned long old_seed;
   int i;
   if (seed)
      old_seed = FUNC1(seed);
   a = (char *) p + (n-1) * sz;

   for (i=n; i > 1; --i) {
      int j = FUNC0() % i;
      FUNC2(a, (char *) p + j * sz, sz);
      a -= sz;
   }
   if (seed)
      FUNC1(old_seed);
}