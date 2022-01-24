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
 scalar_t__ WSAEMSGSIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

ssize_t (FUNC8)(vlc_object_t *restrict obj, int fd,
                   void *restrict buf, size_t len)
{
    size_t rd = 0;

    do
    {
        if (FUNC4())
        {
            FUNC7();
            errno = EINTR;
            return -1;
        }

        ssize_t val = FUNC5(fd, buf, len, 0);
        if (val < 0)
        {
            if (errno == EINTR || errno == EAGAIN)
                continue;
#ifdef _WIN32
            else if (WSAGetLastError() == WSAEMSGSIZE) /* datagram too big */
            {
                msg_Warn(obj, "read truncated to %zu bytes", len);
                val = len;
            }
#endif
            else
            {
                FUNC2(obj, "read error: %s", FUNC6(errno));
                return rd ? (ssize_t)rd : -1;
            }
        }

        rd += val;

        if (val == 0)
            break;

        FUNC1(len >= (size_t)val);
        len -= val;
        buf = ((char *)buf) + val;
    }
    while (len > 0);

    return rd;
}