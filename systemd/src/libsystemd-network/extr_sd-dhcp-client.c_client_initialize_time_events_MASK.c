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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {scalar_t__ start_delay; int /*<<< orphan*/  event_priority; int /*<<< orphan*/  timeout_resend; struct TYPE_8__* event; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  client_timeout_resend ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_dhcp_client *client) {
        uint64_t usec = 0;
        int r;

        FUNC0(client);
        FUNC0(client->event);

        if (client->start_delay > 0) {
                FUNC1(FUNC5(client->event, FUNC3(), &usec) >= 0);
                usec += client->start_delay;
        }

        r = FUNC4(client->event, &client->timeout_resend,
                             FUNC3(),
                             usec, 0,
                             client_timeout_resend, client,
                             client->event_priority, "dhcp4-resend-timer", true);
        if (r < 0)
                FUNC2(client, r);

        return 0;

}