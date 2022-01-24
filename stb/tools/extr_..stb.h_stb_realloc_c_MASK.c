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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,size_t) ; 
 void* FUNC2 (void*,size_t) ; 

void *FUNC3(void *context, void *ptr, size_t newsize)
{
   if (ptr == NULL) return FUNC1(context, newsize);
   if (newsize == 0) { FUNC0(ptr); return NULL; }
   // @TODO: verify you haven't changed contexts
   return FUNC2(ptr, newsize);
}