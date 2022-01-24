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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ repl_transfer_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void) {
    static time_t newline_sent;
    if (FUNC1(NULL) != newline_sent) {
        newline_sent = FUNC1(NULL);
        /* Pinging back in this stage is best-effort. */
        if (server.repl_transfer_s) FUNC0(server.repl_transfer_s, "\n", 1);
    }
}