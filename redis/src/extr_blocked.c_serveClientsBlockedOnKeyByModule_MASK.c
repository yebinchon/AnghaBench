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
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  key; TYPE_1__* db; } ;
typedef  TYPE_2__ readyList ;
struct TYPE_13__ {TYPE_4__* value; } ;
typedef  TYPE_3__ listNode ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_14__ {scalar_t__ btype; } ;
typedef  TYPE_4__ client ;
struct TYPE_11__ {int /*<<< orphan*/  blocking_keys; } ;

/* Variables and functions */
 scalar_t__ BLOCKED_MODULE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

void FUNC8(readyList *rl) {
    dictEntry *de;

    /* We serve clients in the same order they blocked for
     * this key, from the first blocked to the last. */
    de = FUNC0(rl->db->blocking_keys,rl->key);
    if (de) {
        list *clients = FUNC1(de);
        int numclients = FUNC5(clients);

        while(numclients--) {
            listNode *clientnode = FUNC4(clients);
            client *receiver = clientnode->value;

            /* Put at the tail, so that at the next call
             * we'll not run into it again: clients here may not be
             * ready to be served, so they'll remain in the list
             * sometimes. We want also be able to skip clients that are
             * not blocked for the MODULE type safely. */
            FUNC3(clients,clientnode);
            FUNC2(clients,receiver);

            if (receiver->btype != BLOCKED_MODULE) continue;

            /* Note that if *this* client cannot be served by this key,
             * it does not mean that another client that is next into the
             * list cannot be served as well: they may be blocked by
             * different modules with different triggers to consider if a key
             * is ready or not. This means we can't exit the loop but need
             * to continue after the first failure. */
            if (!FUNC6(receiver, rl->key)) continue;

            FUNC7(receiver);
        }
    }
}