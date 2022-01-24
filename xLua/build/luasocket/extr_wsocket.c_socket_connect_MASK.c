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
typedef  int /*<<< orphan*/  err ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int IO_CLOSED ; 
 int IO_DONE ; 
 int IO_TIMEOUT ; 
 int IO_UNKNOWN ; 
 scalar_t__ SOCKET_INVALID ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WAITFD_C ; 
 int WSAEINPROGRESS ; 
 int WSAEWOULDBLOCK ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(p_socket ps, SA *addr, socklen_t len, p_timeout tm) {
    int err;
    /* don't call on closed socket */
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    /* ask system to connect */
    if (FUNC2(*ps, addr, len) == 0) return IO_DONE;
    /* make sure the system is trying to connect */
    err = FUNC1();
    if (err != WSAEWOULDBLOCK && err != WSAEINPROGRESS) return err;
    /* zero timeout case optimization */
    if (FUNC5(tm)) return IO_TIMEOUT;
    /* we wait until something happens */
    err = FUNC4(ps, WAITFD_C, tm);
    if (err == IO_CLOSED) {
        int len = sizeof(err);
        /* give windows time to set the error (yes, disgusting) */
        FUNC0(10);
        /* find out why we failed */
        FUNC3(*ps, SOL_SOCKET, SO_ERROR, (char *)&err, &len); 
        /* we KNOW there was an error. if 'why' is 0, we will return
        * "unknown error", but it's not really our fault */
        return err > 0? err: IO_UNKNOWN; 
    } else return err;

}