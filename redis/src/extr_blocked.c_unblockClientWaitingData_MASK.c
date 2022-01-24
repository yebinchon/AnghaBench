#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int /*<<< orphan*/ * xread_consumer; int /*<<< orphan*/ * xread_group; int /*<<< orphan*/ * target; int /*<<< orphan*/  keys; } ;
struct TYPE_9__ {TYPE_2__ bpop; TYPE_1__* db; } ;
typedef  TYPE_3__ client ;
struct TYPE_7__ {int /*<<< orphan*/  blocking_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

void FUNC13(client *c) {
    dictEntry *de;
    dictIterator *di;
    list *l;

    FUNC12(c,NULL,FUNC8(c->bpop.keys) != 0);
    di = FUNC4(c->bpop.keys);
    /* The client may wait for multiple keys, so unblock it for every key. */
    while((de = FUNC6(di)) != NULL) {
        robj *key = FUNC5(de);

        /* Remove this client from the list of clients waiting for this key. */
        l = FUNC3(c->db->blocking_keys,key);
        FUNC12(c,key,l != NULL);
        FUNC9(l,FUNC11(l,c));
        /* If the list is empty we need to remove it to avoid wasting memory */
        if (FUNC10(l) == 0)
            FUNC1(c->db->blocking_keys,key);
    }
    FUNC7(di);

    /* Cleanup the client structure */
    FUNC2(c->bpop.keys,NULL);
    if (c->bpop.target) {
        FUNC0(c->bpop.target);
        c->bpop.target = NULL;
    }
    if (c->bpop.xread_group) {
        FUNC0(c->bpop.xread_group);
        FUNC0(c->bpop.xread_consumer);
        c->bpop.xread_group = NULL;
        c->bpop.xread_consumer = NULL;
    }
}