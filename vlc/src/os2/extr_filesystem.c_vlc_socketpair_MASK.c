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
 scalar_t__ FUNC0 (int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

int FUNC2(int pf, int type, int proto, int fds[2], bool nonblock)
{
    if (FUNC0(pf, type, proto, fds))
        return -1;

    FUNC1(fds[0], nonblock);
    FUNC1(fds[1], nonblock);
    return 0;
}