#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t processed_bytes; } ;
typedef  TYPE_1__ rio ;
struct TYPE_6__ {size_t loading_process_events_interval_bytes; scalar_t__ repl_state; scalar_t__ masterhost; scalar_t__ rdb_checksum; } ;

/* Variables and functions */
 scalar_t__ REPL_STATE_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void const*,size_t) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(rio *r, const void *buf, size_t len) {
    if (server.rdb_checksum)
        FUNC4(r, buf, len);
    if (server.loading_process_events_interval_bytes &&
        (r->processed_bytes + len)/server.loading_process_events_interval_bytes > r->processed_bytes/server.loading_process_events_interval_bytes)
    {
        /* The DB can take some non trivial amount of time to load. Update
         * our cached time since it is used to create and update the last
         * interaction time with clients and for other important things. */
        FUNC5(0);
        if (server.masterhost && server.repl_state == REPL_STATE_TRANSFER)
            FUNC3();
        FUNC0(r->processed_bytes);
        FUNC1();
        FUNC2(0);
    }
}