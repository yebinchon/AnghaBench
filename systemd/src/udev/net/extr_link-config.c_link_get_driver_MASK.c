#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_3__ {int /*<<< orphan*/  ethtool_fd; } ;
typedef  TYPE_1__ link_config_ctx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char**) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const**) ; 

int FUNC2(link_config_ctx *ctx, sd_device *device, char **ret) {
        const char *name;
        char *driver = NULL;
        int r;

        r = FUNC1(device, &name);
        if (r < 0)
                return r;

        r = FUNC0(&ctx->ethtool_fd, name, &driver);
        if (r < 0)
                return r;

        *ret = driver;
        return 0;
}