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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {int saveparamslen; TYPE_1__* saveparams; } ;
struct TYPE_3__ {int /*<<< orphan*/  changes; scalar_t__ seconds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ server ; 

void FUNC4(struct rewriteConfigState *state) {
    int j;
    sds line;

    /* Note that if there are no save parameters at all, all the current
     * config line with "save" will be detected as orphaned and deleted,
     * resulting into no RDB persistence as expected. */
    for (j = 0; j < server.saveparamslen; j++) {
        line = FUNC2(FUNC3(),"save %ld %d",
            (long) server.saveparams[j].seconds, server.saveparams[j].changes);
        FUNC1(state,"save",line,1);
    }
    /* Mark "save" as processed in case server.saveparamslen is zero. */
    FUNC0(state,"save");
}