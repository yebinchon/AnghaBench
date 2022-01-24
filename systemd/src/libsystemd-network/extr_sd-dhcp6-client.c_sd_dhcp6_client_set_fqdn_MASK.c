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
struct TYPE_4__ {int /*<<< orphan*/  fqdn; } ;
typedef  TYPE_1__ sd_dhcp6_client ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

int FUNC4(
                sd_dhcp6_client *client,
                const char *fqdn) {

        FUNC0(client, -EINVAL);

        /* Make sure FQDN qualifies as DNS and as Linux hostname */
        if (fqdn &&
            !(FUNC3(fqdn, false) && FUNC1(fqdn) > 0))
                return -EINVAL;

        return FUNC2(&client->fqdn, fqdn);
}