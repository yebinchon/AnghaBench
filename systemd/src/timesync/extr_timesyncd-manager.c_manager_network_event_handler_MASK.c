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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_8__ {scalar_t__ current_server_address; int /*<<< orphan*/  network_monitor; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;
        bool changed, connected, online;
        int r;

        FUNC0(m);

        FUNC8(m->network_monitor);

        /* When manager_network_read_link_servers() failed, we assume that the servers are changed. */
        changed = FUNC6(m);

        /* check if the machine is online */
        online = FUNC7();

        /* check if the client is currently connected */
        connected = FUNC5(m);

        if (connected && !online) {
                FUNC1("No network connectivity, watching for changes.");
                FUNC4(m);

        } else if ((!connected || changed) && online) {
                FUNC1("Network configuration changed, trying to establish connection.");

                if (m->current_server_address)
                        r = FUNC2(m);
                else
                        r = FUNC3(m);
                if (r < 0)
                        return r;
        }

        return 0;
}