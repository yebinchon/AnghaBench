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
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {int /*<<< orphan*/  pubsub_channels; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int /*<<< orphan*/  pubsub_channels; } ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 TYPE_2__ server ; 

int FUNC7(client *c, robj *channel) {
    dictEntry *de;
    list *clients = NULL;
    int retval = 0;

    /* Add the channel to the client -> channels hash table */
    if (FUNC1(c->pubsub_channels,channel,NULL) == DICT_OK) {
        retval = 1;
        FUNC4(channel);
        /* Add the client to the channel -> list of clients hash table */
        de = FUNC2(server.pubsub_channels,channel);
        if (de == NULL) {
            clients = FUNC6();
            FUNC1(server.pubsub_channels,channel,clients);
            FUNC4(channel);
        } else {
            clients = FUNC3(de);
        }
        FUNC5(clients,c);
    }
    /* Notify the client */
    FUNC0(c,channel);
    return retval;
}