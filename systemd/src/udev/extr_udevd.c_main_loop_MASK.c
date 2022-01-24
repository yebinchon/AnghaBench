#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* worker_watch; int fd_inotify; int /*<<< orphan*/  event; int /*<<< orphan*/  rules; int /*<<< orphan*/  monitor; int /*<<< orphan*/  inotify_event; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  EPOLLIN ; 
 size_t READ_END ; 
 int /*<<< orphan*/  SD_EVENT_PRIORITY_IDLE ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_PASSCRED ; 
 int /*<<< orphan*/  arg_children_max ; 
 int /*<<< orphan*/  arg_resolve_name_timing ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  on_ctrl_msg ; 
 int /*<<< orphan*/  on_inotify ; 
 int /*<<< orphan*/  on_post ; 
 int /*<<< orphan*/  on_sigchld ; 
 int /*<<< orphan*/  on_sighup ; 
 int /*<<< orphan*/  on_sigterm ; 
 int /*<<< orphan*/  on_uevent ; 
 int /*<<< orphan*/  on_worker ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int FUNC27(Manager *manager) {
        int fd_worker, r;

        manager->pid = FUNC1();

        /* unnamed socket from workers to the main daemon */
        r = FUNC18(AF_LOCAL, SOCK_DGRAM|SOCK_CLOEXEC, 0, manager->worker_watch);
        if (r < 0)
                return FUNC2(errno, "Failed to create socketpair for communicating with workers: %m");

        fd_worker = manager->worker_watch[READ_END];

        r = FUNC16(fd_worker, SOL_SOCKET, SO_PASSCRED, true);
        if (r < 0)
                return FUNC2(r, "Failed to enable SO_PASSCRED: %m");

        r = FUNC25();
        if (r < 0)
                return FUNC2(r, "Failed to create inotify descriptor: %m");
        manager->fd_inotify = r;

        FUNC26();

        /* block and listen to all signals on signalfd */
        FUNC0(FUNC17(SIG_BLOCK, NULL, SIGTERM, SIGINT, SIGHUP, SIGCHLD, -1) >= 0);

        r = FUNC9(&manager->event);
        if (r < 0)
                return FUNC2(r, "Failed to allocate event loop: %m");

        r = FUNC8(manager->event, NULL, SIGINT, on_sigterm, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create SIGINT event source: %m");

        r = FUNC8(manager->event, NULL, SIGTERM, on_sigterm, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create SIGTERM event source: %m");

        r = FUNC8(manager->event, NULL, SIGHUP, on_sighup, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create SIGHUP event source: %m");

        r = FUNC8(manager->event, NULL, SIGCHLD, on_sigchld, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create SIGCHLD event source: %m");

        r = FUNC11(manager->event, true);
        if (r < 0)
                return FUNC2(r, "Failed to create watchdog event source: %m");

        r = FUNC20(manager->ctrl, manager->event);
        if (r < 0)
                return FUNC2(r, "Failed to attach event to udev control: %m");

        r = FUNC22(manager->ctrl, on_ctrl_msg, manager);
        if (r < 0)
                return FUNC2(r, "Failed to start device monitor: %m");

        /* This needs to be after the inotify and uevent handling, to make sure
         * that the ping is send back after fully processing the pending uevents
         * (including the synthetic ones we may create due to inotify events).
         */
        r = FUNC13(FUNC21(manager->ctrl), SD_EVENT_PRIORITY_IDLE);
        if (r < 0)
                return FUNC2(r, "Failed to set IDLE event priority for udev control event source: %m");

        r = FUNC6(manager->event, &manager->inotify_event, manager->fd_inotify, EPOLLIN, on_inotify, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create inotify event source: %m");

        r = FUNC3(manager->monitor, manager->event);
        if (r < 0)
                return FUNC2(r, "Failed to attach event to device monitor: %m");

        r = FUNC5(manager->monitor, on_uevent, manager);
        if (r < 0)
                return FUNC2(r, "Failed to start device monitor: %m");

        (void) FUNC12(FUNC4(manager->monitor), "device-monitor");

        r = FUNC6(manager->event, NULL, fd_worker, EPOLLIN, on_worker, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create worker event source: %m");

        r = FUNC7(manager->event, NULL, on_post, manager);
        if (r < 0)
                return FUNC2(r, "Failed to create post event source: %m");

        FUNC19();

        r = FUNC24(&manager->rules, arg_resolve_name_timing);
        if (!manager->rules)
                return FUNC2(r, "Failed to read udev rules: %m");

        r = FUNC23(manager->rules);
        if (r < 0)
                FUNC2(r, "Failed to apply permissions on static device nodes: %m");

        (void) FUNC15(false,
                          "READY=1\n"
                          "STATUS=Processing with %u children at max", arg_children_max);

        r = FUNC10(manager->event);
        if (r < 0)
                FUNC2(r, "Event loop failed: %m");

        FUNC14(false,
                  "STOPPING=1\n"
                  "STATUS=Shutting down...");
        return r;
}