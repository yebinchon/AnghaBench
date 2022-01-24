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
 void FUNC0 (void const*,size_t) ; 
 void FUNC1 (void const*,size_t) ; 
 void FUNC2 (void const*,size_t) ; 

void
FUNC3(const void *buf, size_t size)
{
#if !defined(DEBUG_KMEM)
	return (FUNC1(buf, size));
#elif !defined(DEBUG_KMEM_TRACKING)
	return (spl_kmem_free_debug(buf, size));
#else
	return (spl_kmem_free_track(buf, size));
#endif
}