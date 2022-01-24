#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  scalar_t__ mstime_t ;
struct TYPE_8__ {TYPE_3__* slaveof; } ;
struct TYPE_7__ {scalar_t__ fail_time; } ;
struct TYPE_6__ {scalar_t__ cluster_node_timeout; TYPE_1__* cluster; } ;
struct TYPE_5__ {int cant_failover_reason; } ;

/* Variables and functions */
#define  CLUSTER_CANT_FAILOVER_DATA_AGE 131 
#define  CLUSTER_CANT_FAILOVER_EXPIRED 130 
 scalar_t__ CLUSTER_CANT_FAILOVER_RELOG_PERIOD ; 
#define  CLUSTER_CANT_FAILOVER_WAITING_DELAY 129 
#define  CLUSTER_CANT_FAILOVER_WAITING_VOTES 128 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ FUNC0 () ; 
 TYPE_4__* myself ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(int reason) {
    char *msg;
    static time_t lastlog_time = 0;
    mstime_t nolog_fail_time = server.cluster_node_timeout + 5000;

    /* Don't log if we have the same reason for some time. */
    if (reason == server.cluster->cant_failover_reason &&
        FUNC3(NULL)-lastlog_time < CLUSTER_CANT_FAILOVER_RELOG_PERIOD)
        return;

    server.cluster->cant_failover_reason = reason;

    /* We also don't emit any log if the master failed no long ago, the
     * goal of this function is to log slaves in a stalled condition for
     * a long time. */
    if (myself->slaveof &&
        FUNC1(myself->slaveof) &&
        (FUNC0() - myself->slaveof->fail_time) < nolog_fail_time) return;

    switch(reason) {
    case CLUSTER_CANT_FAILOVER_DATA_AGE:
        msg = "Disconnected from master for longer than allowed. "
              "Please check the 'cluster-replica-validity-factor' configuration "
              "option.";
        break;
    case CLUSTER_CANT_FAILOVER_WAITING_DELAY:
        msg = "Waiting the delay before I can start a new failover.";
        break;
    case CLUSTER_CANT_FAILOVER_EXPIRED:
        msg = "Failover attempt expired.";
        break;
    case CLUSTER_CANT_FAILOVER_WAITING_VOTES:
        msg = "Waiting for votes, but majority still not reached.";
        break;
    default:
        msg = "Unknown reason code.";
        break;
    }
    lastlog_time = FUNC3(NULL);
    FUNC2(LL_WARNING,"Currently unable to failover: %s", msg);
}