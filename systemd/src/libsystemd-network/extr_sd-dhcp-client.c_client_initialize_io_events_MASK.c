#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_io_handler_t ;
struct TYPE_7__ {int /*<<< orphan*/  receive_message; int /*<<< orphan*/  event_priority; int /*<<< orphan*/  fd; struct TYPE_7__* event; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
                sd_dhcp_client *client,
                sd_event_io_handler_t io_callback) {

        int r;

        FUNC0(client);
        FUNC0(client->event);

        r = FUNC2(client->event, &client->receive_message,
                            client->fd, EPOLLIN, io_callback,
                            client);
        if (r < 0)
                goto error;

        r = FUNC4(client->receive_message,
                                         client->event_priority);
        if (r < 0)
                goto error;

        r = FUNC3(client->receive_message, "dhcp4-receive-message");
        if (r < 0)
                goto error;

error:
        if (r < 0)
                FUNC1(client, r);

        return 0;
}