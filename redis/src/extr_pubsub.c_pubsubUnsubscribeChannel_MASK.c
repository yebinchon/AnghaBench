#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_7__ {int /*<<< orphan*/  pubsub_channels; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int /*<<< orphan*/  pubsub_channels; } ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(client *c, robj *channel, int notify) {
    dictEntry *de;
    list *clients;
    listNode *ln;
    int retval = 0;

    /* Remove the channel from the client -> channels hash table */
    FUNC5(channel); /* channel may be just a pointer to the same object
                            we have in the hash tables. Protect it... */
    if (FUNC2(c->pubsub_channels,channel) == DICT_OK) {
        retval = 1;
        /* Remove the client from the channel -> clients list hash table */
        de = FUNC3(server.pubsub_channels,channel);
        FUNC9(c,NULL,de != NULL);
        clients = FUNC4(de);
        ln = FUNC8(clients,c);
        FUNC9(c,NULL,ln != NULL);
        FUNC6(clients,ln);
        if (FUNC7(clients) == 0) {
            /* Free the list and associated hash entry at all if this was
             * the latest client, so that it will be possible to abuse
             * Redis PUBSUB creating millions of channels. */
            FUNC2(server.pubsub_channels,channel);
        }
    }
    /* Notify the client */
    if (notify) FUNC0(c,channel);
    FUNC1(channel); /* it is finally safe to release it */
    return retval;
}