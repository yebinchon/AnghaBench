#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* user_lookup_fds; int /*<<< orphan*/  user_lookup_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  NOTIFY_RCVBUF_SIZE ; 
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  manager_dispatch_user_lookup_fd ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(Manager *m) {
        int r;

        FUNC0(m);

        /* Set up the socket pair used for passing UID/GID resolution results from forked off processes to PID
         * 1. Background: we can't do name lookups (NSS) from PID 1, since it might involve IPC and thus activation,
         * and we might hence deadlock on ourselves. Hence we do all user/group lookups asynchronously from the forked
         * off processes right before executing the binaries to start. In order to be able to clean up any IPC objects
         * created by a unit (see RemoveIPC=) we need to know in PID 1 the used UID/GID of the executed processes,
         * hence we establish this communication channel so that forked off processes can pass their UID/GID
         * information back to PID 1. The forked off processes send their resolved UID/GID to PID 1 in a simple
         * datagram, along with their unit name, so that we can share one communication socket pair among all units for
         * this purpose.
         *
         * You might wonder why we need a communication channel for this that is independent of the usual notification
         * socket scheme (i.e. $NOTIFY_SOCKET). The primary difference is about trust: data sent via the $NOTIFY_SOCKET
         * channel is only accepted if it originates from the right unit and if reception was enabled for it. The user
         * lookup socket OTOH is only accessible by PID 1 and its children until they exec(), and always available.
         *
         * Note that this function is called under two circumstances: when we first initialize (in which case we
         * allocate both the socket pair and the event source to listen on it), and when we deserialize after a reload
         * (in which case the socket pair already exists but we still need to allocate the event source for it). */

        if (m->user_lookup_fds[0] < 0) {

                /* Free all secondary fields */
                FUNC3(m->user_lookup_fds);
                m->user_lookup_event_source = FUNC7(m->user_lookup_event_source);

                if (FUNC8(AF_UNIX, SOCK_DGRAM|SOCK_CLOEXEC, 0, m->user_lookup_fds) < 0)
                        return FUNC2(errno, "Failed to allocate user lookup socket: %m");

                (void) FUNC1(m->user_lookup_fds[0], NOTIFY_RCVBUF_SIZE);
        }

        if (!m->user_lookup_event_source) {
                r = FUNC4(m->event, &m->user_lookup_event_source, m->user_lookup_fds[0], EPOLLIN, manager_dispatch_user_lookup_fd, m);
                if (r < 0)
                        return FUNC2(errno, "Failed to allocate user lookup event source: %m");

                /* Process even earlier than the notify event source, so that we always know first about valid UID/GID
                 * resolutions */
                r = FUNC6(m->user_lookup_event_source, SD_EVENT_PRIORITY_NORMAL-11);
                if (r < 0)
                        return FUNC2(errno, "Failed to set priority of user lookup event source: %m");

                (void) FUNC5(m->user_lookup_event_source, "user-lookup");
        }

        return 0;
}