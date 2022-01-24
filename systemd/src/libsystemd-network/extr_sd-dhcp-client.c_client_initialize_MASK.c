#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lease; scalar_t__ xid; int /*<<< orphan*/  state; scalar_t__ attempt; int /*<<< orphan*/  timeout_expire; int /*<<< orphan*/  timeout_t2; int /*<<< orphan*/  timeout_t1; int /*<<< orphan*/  timeout_resend; int /*<<< orphan*/  fd; int /*<<< orphan*/  receive_message; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_STATE_INIT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_dhcp_client *client) {
        FUNC0(client, -EINVAL);

        client->receive_message = FUNC4(client->receive_message);

        client->fd = FUNC1(client->fd);

        (void) FUNC2(client->timeout_resend);
        (void) FUNC2(client->timeout_t1);
        (void) FUNC2(client->timeout_t2);
        (void) FUNC2(client->timeout_expire);

        client->attempt = 0;

        client->state = DHCP_STATE_INIT;
        client->xid = 0;

        client->lease = FUNC3(client->lease);

        return 0;
}