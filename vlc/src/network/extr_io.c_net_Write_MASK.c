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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

ssize_t (FUNC6)(vlc_object_t *obj, int fd, const void *buf, size_t len)
{
    size_t written = 0;

    do
    {
        if (FUNC2())
        {
            FUNC5();
            errno = EINTR;
            return -1;
        }

        ssize_t val = FUNC3 (fd, buf, len, MSG_NOSIGNAL);
        if (val == -1)
        {
            if (errno == EINTR || errno == EAGAIN)
                continue;

            FUNC1(obj, "write error: %s", FUNC4(errno));
            return written ? (ssize_t)written : -1;
        }

        if (val == 0)
            break;

        written += val;
        FUNC0(len >= (size_t)val);
        len -= val;
        buf = ((const char *)buf) + val;
    }
    while (len > 0);

    return written;
}