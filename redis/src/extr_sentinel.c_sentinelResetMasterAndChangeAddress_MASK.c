#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  quorum; scalar_t__ s_down_since_time; scalar_t__ o_down_since_time; TYPE_2__* addr; int /*<<< orphan*/  slaves; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
struct TYPE_17__ {char* ip; int port; } ;
typedef  TYPE_2__ sentinelAddr ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  SENTINEL_RESET_NO_SENTINELS ; 
 int /*<<< orphan*/  SRI_SLAVE ; 
 TYPE_2__* FUNC0 (char*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__**) ; 
 TYPE_2__** FUNC12 (TYPE_2__**,int) ; 

int FUNC13(sentinelRedisInstance *master, char *ip, int port) {
    sentinelAddr *oldaddr, *newaddr;
    sentinelAddr **slaves = NULL;
    int numslaves = 0, j;
    dictIterator *di;
    dictEntry *de;

    newaddr = FUNC0(ip,port);
    if (newaddr == NULL) return C_ERR;

    /* Make a list of slaves to add back after the reset.
     * Don't include the one having the address we are switching to. */
    di = FUNC2(master->slaves);
    while((de = FUNC4(di)) != NULL) {
        sentinelRedisInstance *slave = FUNC3(de);

        if (FUNC7(slave->addr,newaddr)) continue;
        slaves = FUNC12(slaves,sizeof(sentinelAddr*)*(numslaves+1));
        slaves[numslaves++] = FUNC0(slave->addr->ip,
                                                 slave->addr->port);
    }
    FUNC5(di);

    /* If we are switching to a different address, include the old address
     * as a slave as well, so that we'll be able to sense / reconfigure
     * the old master. */
    if (!FUNC7(newaddr,master->addr)) {
        slaves = FUNC12(slaves,sizeof(sentinelAddr*)*(numslaves+1));
        slaves[numslaves++] = FUNC0(master->addr->ip,
                                                 master->addr->port);
    }

    /* Reset and switch address. */
    FUNC10(master,SENTINEL_RESET_NO_SENTINELS);
    oldaddr = master->addr;
    master->addr = newaddr;
    master->o_down_since_time = 0;
    master->s_down_since_time = 0;

    /* Add slaves back. */
    for (j = 0; j < numslaves; j++) {
        sentinelRedisInstance *slave;

        slave = FUNC1(NULL,SRI_SLAVE,slaves[j]->ip,
                    slaves[j]->port, master->quorum, master);
        FUNC6(slaves[j]);
        if (slave) FUNC8(LL_NOTICE,"+slave",slave,"%@");
    }
    FUNC11(slaves);

    /* Release the old address at the end so we are safe even if the function
     * gets the master->addr->ip and master->addr->port as arguments. */
    FUNC6(oldaddr);
    FUNC9();
    return C_OK;
}