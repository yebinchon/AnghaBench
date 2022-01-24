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
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  scalar_t__* p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int IO_CLOSED ; 
 int IO_DONE ; 
 scalar_t__ SOCKET_INVALID ; 
 int /*<<< orphan*/  WAITFD_W ; 
 int WSAEWOULDBLOCK ; 
 int FUNC0 () ; 
 int FUNC1 (scalar_t__,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(p_socket ps, const char *data, size_t count, size_t *sent, 
        SA *addr, socklen_t len, p_timeout tm)
{
    int err;
    *sent = 0;
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    for ( ;; ) {
        int put = FUNC1(*ps, data, (int) count, 0, addr, len);
        if (put > 0) {
            *sent = put;
            return IO_DONE;
        }
        err = FUNC0(); 
        if (err != WSAEWOULDBLOCK) return err;
        if ((err = FUNC2(ps, WAITFD_W, tm)) != IO_DONE) return err;
    } 
}