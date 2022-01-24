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
struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ rdb_pipe_numconns_writing; int /*<<< orphan*/  rdb_pipe_read; int /*<<< orphan*/  el; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdbPipeReadHandler ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct connection *conn) {
    if (!FUNC1(conn))
        return;
    FUNC2(conn, NULL);
    server.rdb_pipe_numconns_writing--;
    /* if there are no more writes for now for this conn, or write error: */
    if (server.rdb_pipe_numconns_writing == 0) {
        if (FUNC0(server.el, server.rdb_pipe_read, AE_READABLE, rdbPipeReadHandler,NULL) == AE_ERR) {
            FUNC3("Unrecoverable error creating server.rdb_pipe_read file event.");
        }
    }
}