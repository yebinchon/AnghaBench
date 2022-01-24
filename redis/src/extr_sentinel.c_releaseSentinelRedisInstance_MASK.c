#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; TYPE_1__* master; int /*<<< orphan*/  renamed_commands; int /*<<< orphan*/  addr; int /*<<< orphan*/  info; int /*<<< orphan*/  auth_pass; int /*<<< orphan*/  leader; int /*<<< orphan*/  slave_master_host; int /*<<< orphan*/  client_reconfig_script; int /*<<< orphan*/  notification_script; int /*<<< orphan*/  runid; int /*<<< orphan*/  name; int /*<<< orphan*/  link; int /*<<< orphan*/  slaves; int /*<<< orphan*/  sentinels; } ;
typedef  TYPE_2__ sentinelRedisInstance ;
struct TYPE_6__ {int /*<<< orphan*/ * promoted_slave; } ;

/* Variables and functions */
 int SRI_PROMOTED ; 
 int SRI_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(sentinelRedisInstance *ri) {
    /* Release all its slaves or sentinels if any. */
    FUNC0(ri->sentinels);
    FUNC0(ri->slaves);

    /* Disconnect the instance. */
    FUNC1(ri->link,ri);

    /* Free other resources. */
    FUNC3(ri->name);
    FUNC3(ri->runid);
    FUNC3(ri->notification_script);
    FUNC3(ri->client_reconfig_script);
    FUNC3(ri->slave_master_host);
    FUNC3(ri->leader);
    FUNC3(ri->auth_pass);
    FUNC3(ri->info);
    FUNC2(ri->addr);
    FUNC0(ri->renamed_commands);

    /* Clear state into the master if needed. */
    if ((ri->flags & SRI_SLAVE) && (ri->flags & SRI_PROMOTED) && ri->master)
        ri->master->promoted_slave = NULL;

    FUNC4(ri);
}