#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_16__ {TYPE_9__* db; int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ readyList ;
struct TYPE_17__ {TYPE_5__* value; } ;
typedef  TYPE_4__ listNode ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_14__ {int /*<<< orphan*/ * target; } ;
struct TYPE_18__ {scalar_t__ btype; TYPE_2__* lastcmd; TYPE_1__ bpop; } ;
typedef  TYPE_5__ client ;
struct TYPE_19__ {int /*<<< orphan*/  id; int /*<<< orphan*/  blocking_keys; } ;
struct TYPE_15__ {scalar_t__ proc; } ;

/* Variables and functions */
 scalar_t__ BLOCKED_LIST ; 
 scalar_t__ C_ERR ; 
 int LIST_HEAD ; 
 int LIST_TAIL ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 scalar_t__ blpopCommand ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 

void FUNC15(robj *o, readyList *rl) {
    /* We serve clients in the same order they blocked for
     * this key, from the first blocked to the last. */
    dictEntry *de = FUNC2(rl->db->blocking_keys,rl->key);
    if (de) {
        list *clients = FUNC3(de);
        int numclients = FUNC8(clients);

        while(numclients--) {
            listNode *clientnode = FUNC7(clients);
            client *receiver = clientnode->value;

            if (receiver->btype != BLOCKED_LIST) {
                /* Put at the tail, so that at the next call
                 * we'll not run into it again. */
                FUNC6(clients,clientnode);
                FUNC5(clients,receiver);
                continue;
            }

            robj *dstkey = receiver->bpop.target;
            int where = (receiver->lastcmd &&
                         receiver->lastcmd->proc == blpopCommand) ?
                         LIST_HEAD : LIST_TAIL;
            robj *value = FUNC10(o,where);

            if (value) {
                /* Protect receiver->bpop.target, that will be
                 * freed by the next unblockClient()
                 * call. */
                if (dstkey) FUNC4(dstkey);
                FUNC14(receiver);

                if (FUNC13(receiver,
                    rl->key,dstkey,rl->db,value,
                    where) == C_ERR)
                {
                    /* If we failed serving the client we need
                     * to also undo the POP operation. */
                    FUNC11(o,value,where);
                }

                if (dstkey) FUNC1(dstkey);
                FUNC1(value);
            } else {
                break;
            }
        }
    }

    if (FUNC9(o) == 0) {
        FUNC0(rl->db,rl->key);
        FUNC12(NOTIFY_GENERIC,"del",rl->key,rl->db->id);
    }
    /* We don't call signalModifiedKey() as it was already called
     * when an element was pushed on the list. */
}