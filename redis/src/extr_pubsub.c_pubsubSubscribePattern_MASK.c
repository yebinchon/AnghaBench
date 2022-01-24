#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* client; int /*<<< orphan*/  pattern; } ;
typedef  TYPE_1__ robj ;
typedef  TYPE_1__ pubsubPattern ;
struct TYPE_15__ {int /*<<< orphan*/  pubsub_patterns; } ;
typedef  TYPE_3__ client ;
struct TYPE_16__ {int /*<<< orphan*/  pubsub_patterns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_5__ server ; 
 TYPE_1__* FUNC5 (int) ; 

int FUNC6(client *c, robj *pattern) {
    int retval = 0;

    if (FUNC4(c->pubsub_patterns,pattern) == NULL) {
        retval = 1;
        pubsubPattern *pat;
        FUNC3(c->pubsub_patterns,pattern);
        FUNC2(pattern);
        pat = FUNC5(sizeof(*pat));
        pat->pattern = FUNC1(pattern);
        pat->client = c;
        FUNC3(server.pubsub_patterns,pat);
    }
    /* Notify the client */
    FUNC0(c,pattern);
    return retval;
}