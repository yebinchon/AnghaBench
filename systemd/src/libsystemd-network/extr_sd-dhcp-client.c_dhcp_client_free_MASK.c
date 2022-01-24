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
struct TYPE_9__ {int /*<<< orphan*/  options; int /*<<< orphan*/  user_class; int /*<<< orphan*/  vendor_class_identifier; int /*<<< orphan*/  hostname; int /*<<< orphan*/  req_opts; int /*<<< orphan*/  lease; void* timeout_expire; void* timeout_t2; void* timeout_t1; void* timeout_resend; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_dhcp_client *FUNC9(sd_dhcp_client *client) {
        if (!client)
                return NULL;

        FUNC2(client, "FREE");

        client->timeout_resend = FUNC7(client->timeout_resend);
        client->timeout_t1 = FUNC7(client->timeout_t1);
        client->timeout_t2 = FUNC7(client->timeout_t2);
        client->timeout_expire = FUNC7(client->timeout_expire);

        FUNC0(client);

        FUNC5(client);

        FUNC6(client->lease);

        FUNC1(client->req_opts);
        FUNC1(client->hostname);
        FUNC1(client->vendor_class_identifier);
        client->user_class = FUNC8(client->user_class);
        FUNC4(client->options);
        return FUNC3(client);
}