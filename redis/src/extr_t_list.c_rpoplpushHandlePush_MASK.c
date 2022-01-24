#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_20__ {TYPE_3__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_22__ {int /*<<< orphan*/  list_compress_depth; int /*<<< orphan*/  list_max_ziplist_size; } ;
struct TYPE_21__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIST_HEAD ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*) ; 

void FUNC7(client *c, robj *dstkey, robj *dstobj, robj *value) {
    /* Create the list if the key does not exist */
    if (!dstobj) {
        dstobj = FUNC1();
        FUNC5(dstobj->ptr, server.list_max_ziplist_size,
                            server.list_compress_depth);
        FUNC2(c->db,dstkey,dstobj);
    }
    FUNC6(c->db,dstkey);
    FUNC3(dstobj,value,LIST_HEAD);
    FUNC4(NOTIFY_LIST,"lpush",dstkey,c->db->id);
    /* Always send the pushed value to the client. */
    FUNC0(c,value);
}