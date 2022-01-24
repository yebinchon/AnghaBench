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
struct TYPE_2__ {int aof_pipe_write_data_to_child; int aof_pipe_read_data_from_parent; int aof_pipe_write_ack_to_parent; int aof_pipe_read_ack_from_child; int aof_pipe_write_ack_to_child; int aof_pipe_read_ack_from_parent; scalar_t__ aof_stop_sending_diff; int /*<<< orphan*/  el; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ ANET_OK ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  aofChildPipeReadable ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void) {
    int fds[6] = {-1, -1, -1, -1, -1, -1};
    int j;

    if (FUNC3(fds) == -1) goto error; /* parent -> children data. */
    if (FUNC3(fds+2) == -1) goto error; /* children -> parent ack. */
    if (FUNC3(fds+4) == -1) goto error; /* parent -> children ack. */
    /* Parent -> children data is non blocking. */
    if (FUNC1(NULL,fds[0]) != ANET_OK) goto error;
    if (FUNC1(NULL,fds[1]) != ANET_OK) goto error;
    if (FUNC0(server.el, fds[2], AE_READABLE, aofChildPipeReadable, NULL) == AE_ERR) goto error;

    server.aof_pipe_write_data_to_child = fds[1];
    server.aof_pipe_read_data_from_parent = fds[0];
    server.aof_pipe_write_ack_to_parent = fds[3];
    server.aof_pipe_read_ack_from_child = fds[2];
    server.aof_pipe_write_ack_to_child = fds[5];
    server.aof_pipe_read_ack_from_parent = fds[4];
    server.aof_stop_sending_diff = 0;
    return C_OK;

error:
    FUNC4(LL_WARNING,"Error opening /setting AOF rewrite IPC pipes: %s",
        FUNC5(errno));
    for (j = 0; j < 6; j++) if(fds[j] != -1) FUNC2(fds[j]);
    return C_ERR;
}