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
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_2__ {int aof_stop_sending_diff; int /*<<< orphan*/  aof_pipe_read_ack_from_child; int /*<<< orphan*/  el; int /*<<< orphan*/  aof_pipe_write_ack_to_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,char*,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC6(aeEventLoop *el, int fd, void *privdata, int mask) {
    char byte;
    FUNC0(*el);
    FUNC0(privdata);
    FUNC0(mask);

    if (FUNC2(fd,&byte,1) == 1 && byte == '!') {
        FUNC3(LL_NOTICE,"AOF rewrite child asks to stop sending diffs.");
        server.aof_stop_sending_diff = 1;
        if (FUNC5(server.aof_pipe_write_ack_to_child,"!",1) != 1) {
            /* If we can't send the ack, inform the user, but don't try again
             * since in the other side the children will use a timeout if the
             * kernel can't buffer our write, or, the children was
             * terminated. */
            FUNC3(LL_WARNING,"Can't send ACK to AOF child: %s",
                FUNC4(errno));
        }
    }
    /* Remove the handler since this can be called only one time during a
     * rewrite. */
    FUNC1(server.el,server.aof_pipe_read_ack_from_child,AE_READABLE);
}