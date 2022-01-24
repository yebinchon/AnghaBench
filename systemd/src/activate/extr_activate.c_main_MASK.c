#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
struct epoll_event {TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SD_LISTEN_FDS_START ; 
 scalar_t__ arg_accept ; 
 int FUNC0 (char*,char**,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct epoll_event*,int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,char**,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int*,scalar_t__) ; 
 size_t optind ; 
 int FUNC11 (int,char**) ; 

int FUNC12(int argc, char **argv, char **envp) {
        int r, n;
        int epoll_fd = -1;

        FUNC9(true);
        FUNC8();
        FUNC7();

        r = FUNC11(argc, argv);
        if (r <= 0)
                return r == 0 ? EXIT_SUCCESS : EXIT_FAILURE;

        r = FUNC3();
        if (r < 0)
                return EXIT_FAILURE;

        n = FUNC10(&epoll_fd, arg_accept);
        if (n < 0)
                return EXIT_FAILURE;
        if (n == 0) {
                FUNC4("No sockets to listen on specified or passed in.");
                return EXIT_FAILURE;
        }

        for (;;) {
                struct epoll_event event;

                if (FUNC1(epoll_fd, &event, 1, -1) < 0) {
                        if (errno == EINTR)
                                continue;

                        FUNC5(errno, "epoll_wait() failed: %m");
                        return EXIT_FAILURE;
                }

                FUNC6("Communication attempt on fd %i.", event.data.fd);
                if (arg_accept) {
                        r = FUNC0(argv[optind], argv + optind, envp, event.data.fd);
                        if (r < 0)
                                return EXIT_FAILURE;
                } else
                        break;
        }

        FUNC2(argv[optind], argv + optind, envp, SD_LISTEN_FDS_START, (size_t) n);

        return EXIT_SUCCESS;
}