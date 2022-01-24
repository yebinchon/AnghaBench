#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
struct TYPE_36__ {TYPE_3__* member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ streamPropInfo ;
struct TYPE_37__ {int /*<<< orphan*/  seq; } ;
typedef  TYPE_6__ streamID ;
typedef  int /*<<< orphan*/  streamConsumer ;
struct TYPE_38__ {TYPE_6__ last_id; } ;
typedef  TYPE_7__ streamCG ;
struct TYPE_39__ {int /*<<< orphan*/  last_id; } ;
typedef  TYPE_8__ stream ;
struct TYPE_40__ {TYPE_8__* ptr; } ;
typedef  TYPE_9__ robj ;
struct TYPE_30__ {int /*<<< orphan*/  key; TYPE_1__* db; } ;
typedef  TYPE_10__ readyList ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_35__ {int xread_group_noack; int /*<<< orphan*/  xread_count; TYPE_3__* xread_group; TYPE_2__* xread_consumer; int /*<<< orphan*/  keys; } ;
struct TYPE_31__ {scalar_t__ btype; int resp; TYPE_4__ bpop; } ;
typedef  TYPE_11__ client ;
struct TYPE_34__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_33__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_32__ {int /*<<< orphan*/  blocking_keys; } ;

/* Variables and functions */
 scalar_t__ BLOCKED_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_7__* FUNC11 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_11__*,TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*) ; 

void FUNC15(robj *o, readyList *rl) {
    dictEntry *de = FUNC5(rl->db->blocking_keys,rl->key);
    stream *s = o->ptr;

    /* We need to provide the new data arrived on the stream
     * to all the clients that are waiting for an offset smaller
     * than the current top item. */
    if (de) {
        list *clients = FUNC6(de);
        listNode *ln;
        listIter li;
        FUNC9(clients,&li);

        while((ln = FUNC7(&li))) {
            client *receiver = FUNC8(ln);
            if (receiver->btype != BLOCKED_STREAM) continue;
            streamID *gt = FUNC4(receiver->bpop.keys,
                                          rl->key);

            /* If we blocked in the context of a consumer
             * group, we need to resolve the group and update the
             * last ID the client is blocked for: this is needed
             * because serving other clients in the same consumer
             * group will alter the "last ID" of the consumer
             * group, and clients blocked in a consumer group are
             * always blocked for the ">" ID: we need to deliver
             * only new messages and avoid unblocking the client
             * otherwise. */
            streamCG *group = NULL;
            if (receiver->bpop.xread_group) {
                group = FUNC11(s,
                        receiver->bpop.xread_group->ptr);
                /* If the group was not found, send an error
                 * to the consumer. */
                if (!group) {
                    FUNC2(receiver,
                        "-NOGROUP the consumer group this client "
                        "was blocked on no longer exists");
                    FUNC14(receiver);
                    continue;
                } else {
                    *gt = group->last_id;
                }
            }

            if (FUNC10(&s->last_id, gt) > 0) {
                streamID start = *gt;
                start.seq++; /* Can't overflow, it's an uint64_t */

                /* Lookup the consumer for the group, if any. */
                streamConsumer *consumer = NULL;
                int noack = 0;

                if (group) {
                    consumer = FUNC12(group,
                               receiver->bpop.xread_consumer->ptr,
                               1);
                    noack = receiver->bpop.xread_group_noack;
                }

                /* Emit the two elements sub-array consisting of
                 * the name of the stream and the data we
                 * extracted from it. Wrapped in a single-item
                 * array, since we have just one key. */
                if (receiver->resp == 2) {
                    FUNC0(receiver,1);
                    FUNC0(receiver,2);
                } else {
                    FUNC3(receiver,1);
                }
                FUNC1(receiver,rl->key);

                streamPropInfo pi = {
                    rl->key,
                    receiver->bpop.xread_group
                };
                FUNC13(receiver,s,&start,NULL,
                                     receiver->bpop.xread_count,
                                     0, group, consumer, noack, &pi);

                /* Note that after we unblock the client, 'gt'
                 * and other receiver->bpop stuff are no longer
                 * valid, so we must do the setup above before
                 * this call. */
                FUNC14(receiver);
            }
        }
    }
}