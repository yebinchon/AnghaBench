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
struct TYPE_2__ {scalar_t__ repl_state; int repl_transfer_fd; int /*<<< orphan*/ * repl_transfer_tmpfile; } ;

/* Variables and functions */
 scalar_t__ REPL_STATE_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void) {
    FUNC1(server.repl_state == REPL_STATE_TRANSFER);
    FUNC2();
    if (server.repl_transfer_fd!=-1) {
        FUNC0(server.repl_transfer_fd);
        FUNC3(server.repl_transfer_tmpfile);
        FUNC4(server.repl_transfer_tmpfile);
        server.repl_transfer_tmpfile = NULL;
        server.repl_transfer_fd = -1;
    }
}