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
struct TYPE_9__ {int /*<<< orphan*/  raw_option; } ;
typedef  TYPE_1__ sd_dhcp_server ;
typedef  TYPE_1__ sd_dhcp_raw_option ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dhcp_raw_options_hash_ops ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(sd_dhcp_server *server, sd_dhcp_raw_option *v) {
        int r;

        FUNC0(server, -EINVAL);
        FUNC0(v, -EINVAL);

        r = FUNC1(&server->raw_option, &dhcp_raw_options_hash_ops);
        if (r < 0)
                return -ENOMEM;

        r = FUNC2(server->raw_option, v, v);
        if (r < 0)
                return r;

        FUNC3(v);

        return 1;
}