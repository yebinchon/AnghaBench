#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  soft ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  hard ;
struct TYPE_6__ {scalar_t__ hard_limit_bytes; scalar_t__ soft_limit_bytes; scalar_t__ soft_limit_seconds; } ;
struct TYPE_5__ {TYPE_1__* client_obuf_limits; } ;
struct TYPE_4__ {scalar_t__ hard_limit_bytes; scalar_t__ soft_limit_bytes; scalar_t__ soft_limit_seconds; } ;

/* Variables and functions */
 int CLIENT_TYPE_OBUF_COUNT ; 
 TYPE_3__* clientBufferLimitsDefaults ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void FUNC6(struct rewriteConfigState *state) {
    int j;
    char *option = "client-output-buffer-limit";

    for (j = 0; j < CLIENT_TYPE_OBUF_COUNT; j++) {
        int force = (server.client_obuf_limits[j].hard_limit_bytes !=
                    clientBufferLimitsDefaults[j].hard_limit_bytes) ||
                    (server.client_obuf_limits[j].soft_limit_bytes !=
                    clientBufferLimitsDefaults[j].soft_limit_bytes) ||
                    (server.client_obuf_limits[j].soft_limit_seconds !=
                    clientBufferLimitsDefaults[j].soft_limit_seconds);
        sds line;
        char hard[64], soft[64];

        FUNC1(hard,sizeof(hard),
                server.client_obuf_limits[j].hard_limit_bytes);
        FUNC1(soft,sizeof(soft),
                server.client_obuf_limits[j].soft_limit_bytes);

        char *typename = FUNC0(j);
        if (!FUNC5(typename,"slave")) typename = "replica";
        line = FUNC3(FUNC4(),"%s %s %s %s %ld",
                option, typename, hard, soft,
                (long) server.client_obuf_limits[j].soft_limit_seconds);
        FUNC2(state,option,line,force);
    }
}