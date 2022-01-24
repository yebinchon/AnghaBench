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
 int DL_LAZY ; 
 int RTLD_LAZY ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char const*,int const) ; 

void *FUNC2(const char *path, bool lazy)
{
#if defined (RTLD_NOW)
    const int flags = lazy ? RTLD_LAZY : RTLD_NOW;
#elif defined (DL_LAZY)
    const int flags = DL_LAZY;
    VLC_UNUSED(lazy);
#else
    const int flags = 0;
    FUNC0(lazy);
#endif
    return FUNC1 (path, flags);
}