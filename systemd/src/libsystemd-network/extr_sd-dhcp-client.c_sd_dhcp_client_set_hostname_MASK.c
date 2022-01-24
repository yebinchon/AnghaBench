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
struct TYPE_4__ {int /*<<< orphan*/  hostname; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

int FUNC4(
                sd_dhcp_client *client,
                const char *hostname) {

        FUNC0(client, -EINVAL);

        /* Make sure hostnames qualify as DNS and as Linux hostnames */
        if (hostname &&
            !(FUNC3(hostname, false) && FUNC1(hostname) > 0))
                return -EINVAL;

        return FUNC2(&client->hostname, hostname);
}