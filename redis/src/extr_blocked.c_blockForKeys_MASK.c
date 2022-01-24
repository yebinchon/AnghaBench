#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamID ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  mstime_t ;
typedef  void list ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int /*<<< orphan*/  keys; int /*<<< orphan*/ * target; int /*<<< orphan*/  timeout; } ;
struct TYPE_10__ {TYPE_2__* db; TYPE_1__ bpop; } ;
typedef  TYPE_3__ client ;
struct TYPE_9__ {int /*<<< orphan*/  blocking_keys; } ;

/* Variables and functions */
 int BLOCKED_STREAM ; 
 int DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_3__*) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int) ; 

void FUNC11(client *c, int btype, robj **keys, int numkeys, mstime_t timeout, robj *target, streamID *ids) {
    dictEntry *de;
    list *l;
    int j;

    c->bpop.timeout = timeout;
    c->bpop.target = target;

    if (target != NULL) FUNC4(target);

    for (j = 0; j < numkeys; j++) {
        /* The value associated with the key name in the bpop.keys dictionary
         * is NULL for lists and sorted sets, or the stream ID for streams. */
        void *key_data = NULL;
        if (btype == BLOCKED_STREAM) {
            key_data = FUNC10(sizeof(streamID));
            FUNC7(key_data,ids+j,sizeof(streamID));
        }

        /* If the key already exists in the dictionary ignore it. */
        if (FUNC1(c->bpop.keys,keys[j],key_data) != DICT_OK) {
            FUNC9(key_data);
            continue;
        }
        FUNC4(keys[j]);

        /* And in the other "side", to map keys -> clients */
        de = FUNC2(c->db->blocking_keys,keys[j]);
        if (de == NULL) {
            int retval;

            /* For every key we take a list of clients blocked for it */
            l = FUNC6();
            retval = FUNC1(c->db->blocking_keys,keys[j],l);
            FUNC4(keys[j]);
            FUNC8(c,keys[j],retval == DICT_OK);
        } else {
            l = FUNC3(de);
        }
        FUNC5(l,c);
    }
    FUNC0(c,btype);
}