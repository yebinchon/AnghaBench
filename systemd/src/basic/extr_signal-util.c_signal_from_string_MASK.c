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
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (int) ; 
 int SIGRTMAX ; 
 int SIGRTMIN ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,int*) ; 
 char* FUNC3 (char const*,char*) ; 

int FUNC4(const char *s) {
        const char *p;
        int signo, r;

        /* Check that the input is a signal number. */
        if (FUNC2(s, &signo) >= 0) {
                if (FUNC0(signo))
                        return signo;
                else
                        return -ERANGE;
        }

        /* Drop "SIG" prefix. */
        if (FUNC3(s, "SIG"))
                s += 3;

        /* Check that the input is a signal name. */
        signo = FUNC1(s);
        if (signo > 0)
                return signo;

        /* Check that the input is RTMIN or
         * RTMIN+n (0 <= n <= SIGRTMAX-SIGRTMIN). */
        p = FUNC3(s, "RTMIN");
        if (p) {
                if (*p == '\0')
                        return SIGRTMIN;
                if (*p != '+')
                        return -EINVAL;

                r = FUNC2(p, &signo);
                if (r < 0)
                        return r;

                if (signo < 0 || signo > SIGRTMAX - SIGRTMIN)
                        return -ERANGE;

                return signo + SIGRTMIN;
        }

        /* Check that the input is RTMAX or
         * RTMAX-n (0 <= n <= SIGRTMAX-SIGRTMIN). */
        p = FUNC3(s, "RTMAX");
        if (p) {
                if (*p == '\0')
                        return SIGRTMAX;
                if (*p != '-')
                        return -EINVAL;

                r = FUNC2(p, &signo);
                if (r < 0)
                        return r;

                if (signo > 0 || signo < SIGRTMIN - SIGRTMAX)
                        return -ERANGE;

                return signo + SIGRTMAX;
        }

        return -EINVAL;
}