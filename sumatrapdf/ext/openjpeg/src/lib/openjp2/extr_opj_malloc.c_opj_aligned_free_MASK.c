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
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(void* ptr)
{
#if defined(OPJ_HAVE_POSIX_MEMALIGN) || defined(OPJ_HAVE_MEMALIGN)
    free(ptr);
#elif defined(OPJ_HAVE__ALIGNED_MALLOC)
    _aligned_free(ptr);
#else
    /* Generic implementation has malloced pointer stored in front of used area */
    if (ptr != NULL) {
        FUNC1(((void**) ptr)[-1]);
    }
#endif
}