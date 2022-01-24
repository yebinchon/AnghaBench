#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int input; int /*<<< orphan*/  input_event; int /*<<< orphan*/  events; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int STDIN_FILENO ; 
 scalar_t__ arg_follow ; 
 int /*<<< orphan*/  dispatch_fd_input ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  fd_input_callback ; 
 int FUNC0 (int,char*,...) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(Uploader *u, const char *filename) {
        int fd, r = 0;

        if (FUNC4(filename, "-"))
                fd = STDIN_FILENO;
        else {
                fd = FUNC1(filename, O_RDONLY|O_CLOEXEC|O_NOCTTY);
                if (fd < 0)
                        return FUNC0(errno, "Failed to open %s: %m", filename);
        }

        u->input = fd;

        if (arg_follow) {
                r = FUNC2(u->events, &u->input_event,
                                    fd, EPOLLIN, dispatch_fd_input, u);
                if (r < 0) {
                        if (r != -EPERM || arg_follow > 0)
                                return FUNC0(r, "Failed to register input event: %m");

                        /* Normal files should just be consumed without polling. */
                        r = FUNC3(u, fd_input_callback, u);
                }
        }

        return r;
}