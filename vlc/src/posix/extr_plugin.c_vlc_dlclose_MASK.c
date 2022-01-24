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
 scalar_t__ RUNNING_ON_VALGRIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 

int FUNC2(void *handle)
{
#if !defined(__SANITIZE_ADDRESS__)
#ifdef HAVE_VALGRIND_VALGRIND_H
    if( RUNNING_ON_VALGRIND > 0 )
        return 0; /* do not dlclose() so that we get proper stack traces */
#endif
    int err = FUNC1( handle );
    FUNC0(err == 0);
    return err;
#else
    (void) handle;
    return 0;
#endif
}