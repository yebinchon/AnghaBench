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
struct TYPE_2__ {size_t size; } ;

/* Variables and functions */
 TYPE_1__* stb__allocations ; 
 int FUNC0 (void*) ; 

size_t FUNC1(void *p)
{
   int n = FUNC0(p);
   if (n < 0) return 0;
   return stb__allocations[n].size;
}