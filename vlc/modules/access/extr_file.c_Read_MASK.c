#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int fd; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
#define  EAGAIN 129 
#define  EINTR 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3 (stream_t *p_access, void *p_buffer, size_t i_len)
{
    access_sys_t *p_sys = p_access->p_sys;
    int fd = p_sys->fd;

    ssize_t val = FUNC1 (fd, p_buffer, i_len);
    if (val < 0)
    {
        switch (errno)
        {
            case EINTR:
            case EAGAIN:
                return -1;
        }

        FUNC0 (p_access, "read error: %s", FUNC2(errno));
        val = 0;
    }

    return val;
}