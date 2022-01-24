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
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int const,int) ; 
 int FUNC2 (int const,int) ; 

__attribute__((used)) static int FUNC3(const int fds[], size_t n_socket_fds, size_t n_storage_fds, bool nonblock) {
        size_t i, n_fds;
        int r;

        n_fds = n_socket_fds + n_storage_fds;
        if (n_fds <= 0)
                return 0;

        FUNC0(fds);

        /* Drops/Sets O_NONBLOCK and FD_CLOEXEC from the file flags.
         * O_NONBLOCK only applies to socket activation though. */

        for (i = 0; i < n_fds; i++) {

                if (i < n_socket_fds) {
                        r = FUNC2(fds[i], nonblock);
                        if (r < 0)
                                return r;
                }

                /* We unconditionally drop FD_CLOEXEC from the fds,
                 * since after all we want to pass these fds to our
                 * children */

                r = FUNC1(fds[i], false);
                if (r < 0)
                        return r;
        }

        return 0;
}