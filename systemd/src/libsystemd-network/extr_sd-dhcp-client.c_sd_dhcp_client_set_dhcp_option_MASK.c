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
struct TYPE_8__ {int /*<<< orphan*/  option; int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ sd_dhcp_option ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dhcp_option_hash_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(sd_dhcp_client *client, sd_dhcp_option *v) {
        int r;

        FUNC1(client, -EINVAL);
        FUNC1(v, -EINVAL);

        r = FUNC2(&client->options, &dhcp_option_hash_ops);
        if (r < 0)
                return r;

        r = FUNC3(client->options, FUNC0(v->option), v);
        if (r < 0)
                return r;

        FUNC4(v);
        return 0;
}