#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fqdn; int /*<<< orphan*/  req_opts; int /*<<< orphan*/  fd; void* timeout_t2; void* timeout_t1; void* timeout_resend_expire; void* timeout_resend; } ;
typedef  TYPE_1__ sd_dhcp6_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (void*) ; 

__attribute__((used)) static sd_dhcp6_client *FUNC7(sd_dhcp6_client *client) {
        FUNC0(client);

        client->timeout_resend = FUNC6(client->timeout_resend);
        client->timeout_resend_expire = FUNC6(client->timeout_resend_expire);
        client->timeout_t1 = FUNC6(client->timeout_t1);
        client->timeout_t2 = FUNC6(client->timeout_t2);

        FUNC1(client);

        client->fd = FUNC4(client->fd);

        FUNC5(client);

        FUNC2(client->req_opts);
        FUNC2(client->fqdn);
        return FUNC3(client);
}