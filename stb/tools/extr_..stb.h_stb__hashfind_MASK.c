#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int stb_uint32 ;
struct TYPE_2__ {void* p; } ;

/* Variables and functions */
 int stb__alloc_mask ; 
 TYPE_1__* stb__allocations ; 
 int FUNC0 (void*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void *p)
{
   stb_uint32 h = FUNC0(p);
   int s,n = h & stb__alloc_mask;
   if (stb__allocations[n].p == p)
      return n;
   s = FUNC1(h)|1;
   for(;;) {
      if (stb__allocations[n].p == NULL)
         return -1;
      n = (n+s) & stb__alloc_mask;
      if (stb__allocations[n].p == p)
         return n;
   }
}