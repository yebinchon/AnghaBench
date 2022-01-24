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
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3 (int fds[2])
{
#ifdef HAVE_PIPE2
    return pipe2(fds, O_CLOEXEC);
#else
    int ret = FUNC0(fds);
    if (ret == 0)
    {
        FUNC2(fds[0]);
        FUNC2(fds[1]);
    }
    return ret;
#endif
}