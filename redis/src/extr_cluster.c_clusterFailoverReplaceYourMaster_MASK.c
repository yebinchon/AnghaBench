#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  clusterNode ;
struct TYPE_5__ {int /*<<< orphan*/ * slaveof; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_BROADCAST_ALL ; 
 int CLUSTER_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* myself ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void) {
    int j;
    clusterNode *oldmaster = myself->slaveof;

    if (FUNC7(myself) || oldmaster == NULL) return;

    /* 1) Turn this node into a master. */
    FUNC5(myself);
    FUNC8();

    /* 2) Claim all the slots assigned to our master. */
    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (FUNC3(oldmaster,j)) {
            FUNC2(j);
            FUNC0(myself,j);
        }
    }

    /* 3) Update state and save config. */
    FUNC6();
    FUNC4(1);

    /* 4) Pong all the other nodes so that they can update the state
     *    accordingly and detect that we switched to master role. */
    FUNC1(CLUSTER_BROADCAST_ALL);

    /* 5) If there was a manual failover in progress, clear the state. */
    FUNC9();
}