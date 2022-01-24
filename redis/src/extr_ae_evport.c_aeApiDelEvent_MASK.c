#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* events; TYPE_3__* apidata; } ;
typedef  TYPE_2__ aeEventLoop ;
struct TYPE_8__ {int* pending_masks; int* pending_fds; int /*<<< orphan*/  portfd; } ;
typedef  TYPE_3__ aeApiState ;
struct TYPE_6__ {int mask; } ;

/* Variables and functions */
 int AE_NONE ; 
 int /*<<< orphan*/  PORT_SOURCE_FD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ evport_debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(aeEventLoop *eventLoop, int fd, int mask) {
    aeApiState *state = eventLoop->apidata;
    int fullmask, pfd;

    if (evport_debug)
        FUNC3(stderr, "del fd %d mask 0x%x\n", fd, mask);

    pfd = FUNC2(state, fd);

    if (pfd != -1) {
        if (evport_debug)
            FUNC3(stderr, "deleting event from pending fd %d\n", fd);

        /*
         * This fd was just returned from aeApiPoll, so it's not currently
         * associated with the port.  All we need to do is update
         * pending_mask appropriately.
         */
        state->pending_masks[pfd] &= ~mask;

        if (state->pending_masks[pfd] == AE_NONE)
            state->pending_fds[pfd] = -1;

        return;
    }

    /*
     * The fd is currently associated with the port.  Like with the add case
     * above, we must look at the full mask for the file descriptor before
     * updating that association.  We don't have a good way of knowing what the
     * events are without looking into the eventLoop state directly.  We rely on
     * the fact that our caller has already updated the mask in the eventLoop.
     */

    fullmask = eventLoop->events[fd].mask;
    if (fullmask == AE_NONE) {
        /*
         * We're removing *all* events, so use port_dissociate to remove the
         * association completely.  Failure here indicates a bug.
         */
        if (evport_debug)
            FUNC3(stderr, "aeApiDelEvent: port_dissociate(%d)\n", fd);

        if (FUNC5(state->portfd, PORT_SOURCE_FD, fd) != 0) {
            FUNC4("aeApiDelEvent: port_dissociate");
            FUNC0(); /* will not return */
        }
    } else if (FUNC1("aeApiDelEvent", state->portfd, fd,
        fullmask) != 0) {
        /*
         * ENOMEM is a potentially transient condition, but the kernel won't
         * generally return it unless things are really bad.  EAGAIN indicates
         * we've reached an resource limit, for which it doesn't make sense to
         * retry (counter-intuitively).  All other errors indicate a bug.  In any
         * of these cases, the best we can do is to abort.
         */
        FUNC0(); /* will not return */
    }
}