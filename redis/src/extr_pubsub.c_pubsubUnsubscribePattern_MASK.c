#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* pattern; TYPE_3__* client; } ;
typedef  TYPE_1__ robj ;
typedef  TYPE_1__ pubsubPattern ;
typedef  int /*<<< orphan*/  listNode ;
struct TYPE_13__ {int /*<<< orphan*/  pubsub_patterns; } ;
typedef  TYPE_3__ client ;
struct TYPE_14__ {int /*<<< orphan*/  pubsub_patterns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_4__ server ; 

int FUNC5(client *c, robj *pattern, int notify) {
    listNode *ln;
    pubsubPattern pat;
    int retval = 0;

    FUNC2(pattern); /* Protect the object. May be the same we remove */
    if ((ln = FUNC4(c->pubsub_patterns,pattern)) != NULL) {
        retval = 1;
        FUNC3(c->pubsub_patterns,ln);
        pat.client = c;
        pat.pattern = pattern;
        ln = FUNC4(server.pubsub_patterns,&pat);
        FUNC3(server.pubsub_patterns,ln);
    }
    /* Notify the client */
    if (notify) FUNC0(c,pattern);
    FUNC1(pattern);
    return retval;
}