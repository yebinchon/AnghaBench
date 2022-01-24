#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* myid; } ;
struct TYPE_3__ {int /*<<< orphan*/ * configfile; } ;

/* Variables and functions */
 int CONFIG_RUN_ID_SIZE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  W_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 TYPE_2__ sentinel ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void) {
    int j;

    if (server.configfile == NULL) {
        FUNC5(LL_WARNING,
            "Sentinel started without a config file. Exiting...");
        FUNC1(1);
    } else if (FUNC0(server.configfile,W_OK) == -1) {
        FUNC5(LL_WARNING,
            "Sentinel config file %s is not writable: %s. Exiting...",
            server.configfile,FUNC6(errno));
        FUNC1(1);
    }

    /* If this Sentinel has yet no ID set in the configuration file, we
     * pick a random one and persist the config on disk. From now on this
     * will be this Sentinel ID across restarts. */
    for (j = 0; j < CONFIG_RUN_ID_SIZE; j++)
        if (sentinel.myid[j] != 0) break;

    if (j == CONFIG_RUN_ID_SIZE) {
        /* Pick ID and persist the config. */
        FUNC2(sentinel.myid,CONFIG_RUN_ID_SIZE);
        FUNC3();
    }

    /* Log its ID to make debugging of issues simpler. */
    FUNC5(LL_WARNING,"Sentinel ID is %s", sentinel.myid);

    /* We want to generate a +monitor event for every configured master
     * at startup. */
    FUNC4();
}