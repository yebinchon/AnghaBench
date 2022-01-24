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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IO_CLOSED ; 
 int IO_DONE ; 
 int IO_TIMEOUT ; 
 int WAITFD_C ; 
 int WAITFD_R ; 
 int WAITFD_W ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(p_socket ps, int sw, p_timeout tm) {
    int ret;
    fd_set rfds, wfds, efds, *rp = NULL, *wp = NULL, *ep = NULL;
    struct timeval tv, *tp = NULL;
    double t;
    if (FUNC6(tm)) return IO_TIMEOUT;  /* optimize timeout == 0 case */
    if (sw & WAITFD_R) { 
        FUNC2(&rfds); 
        FUNC1(*ps, &rfds);
        rp = &rfds; 
    }
    if (sw & WAITFD_W) { FUNC2(&wfds); FUNC1(*ps, &wfds); wp = &wfds; }
    if (sw & WAITFD_C) { FUNC2(&efds); FUNC1(*ps, &efds); ep = &efds; }
    if ((t = FUNC5(tm)) >= 0.0) {
        tv.tv_sec = (int) t;
        tv.tv_usec = (int) ((t-tv.tv_sec)*1.0e6);
        tp = &tv;
    }
    ret = FUNC4(0, rp, wp, ep, tp);
    if (ret == -1) return FUNC3();
    if (ret == 0) return IO_TIMEOUT;
    if (sw == WAITFD_C && FUNC0(*ps, &efds)) return IO_CLOSED;
    return IO_DONE;
}