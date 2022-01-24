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
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/ * p_socket ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int IO_CLOSED ; 
 int IO_DONE ; 
 int IO_TIMEOUT ; 
 int POLLERR ; 
 int POLLIN ; 
 int WAITFD_C ; 
 scalar_t__ errno ; 
 int FUNC0 (struct pollfd*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(p_socket ps, int sw, p_timeout tm) {
    int ret;
    struct pollfd pfd;
    pfd.fd = *ps;
    pfd.events = sw;
    pfd.revents = 0;
    if (FUNC2(tm)) return IO_TIMEOUT;  /* optimize timeout == 0 case */
    do {
        int t = (int)(FUNC1(tm)*1e3);
        ret = FUNC0(&pfd, 1, t >= 0? t: -1);
    } while (ret == -1 && errno == EINTR);
    if (ret == -1) return errno;
    if (ret == 0) return IO_TIMEOUT;
    if (sw == WAITFD_C && (pfd.revents & (POLLIN|POLLERR))) return IO_CLOSED;
    return IO_DONE;
}