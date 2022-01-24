#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {int /*<<< orphan*/  masterport; int /*<<< orphan*/ * masterhost; scalar_t__ cluster_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ server ; 

void FUNC4(struct rewriteConfigState *state, char *option) {
    sds line;

    /* If this is a master, we want all the slaveof config options
     * in the file to be removed. Note that if this is a cluster instance
     * we don't want a slaveof directive inside redis.conf. */
    if (server.cluster_enabled || server.masterhost == NULL) {
        FUNC0(state,option);
        return;
    }
    line = FUNC2(FUNC3(),"%s %s %d", option,
        server.masterhost, server.masterport);
    FUNC1(state,option,line,1);
}