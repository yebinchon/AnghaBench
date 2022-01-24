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
 int EAGAIN ; 
 int EINPROGRESS ; 
 int EINTR ; 
 int IO_CLOSED ; 
 int IO_DONE ; 
 int IO_TIMEOUT ; 
 scalar_t__ SOCKET_INVALID ; 
 int /*<<< orphan*/  WAITFD_C ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(p_socket ps, SA *addr, socklen_t len, p_timeout tm) {
    int err;
    /* avoid calling on closed sockets */
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    /* call connect until done or failed without being interrupted */
    do if (FUNC0(*ps, addr, len) == 0) return IO_DONE;
    while ((err = errno) == EINTR);
    /* if connection failed immediately, return error code */
    if (err != EINPROGRESS && err != EAGAIN) return err; 
    /* zero timeout case optimization */
    if (FUNC3(tm)) return IO_TIMEOUT;
    /* wait until we have the result of the connection attempt or timeout */
    err = FUNC2(ps, WAITFD_C, tm);
    if (err == IO_CLOSED) {
        if (FUNC1(*ps, (char *) &err, 0, 0) == 0) return IO_DONE;
        else return errno;
    } else return err;
}