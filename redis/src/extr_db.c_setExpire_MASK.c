#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_12__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  dict; } ;
typedef  TYPE_2__ redisDb ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_3__ client ;
struct TYPE_14__ {scalar_t__ repl_slave_ro; scalar_t__ masterhost; } ;

/* Variables and functions */
 int CLIENT_MASTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6(client *c, redisDb *db, robj *key, long long when) {
    dictEntry *kde, *de;

    /* Reuse the sds from the main dict in the expire dict */
    kde = FUNC1(db->dict,key->ptr);
    FUNC5(NULL,key,kde != NULL);
    de = FUNC0(db->expires,FUNC2(kde));
    FUNC3(de,when);

    int writable_slave = server.masterhost && server.repl_slave_ro == 0;
    if (c && writable_slave && !(c->flags & CLIENT_MASTER))
        FUNC4(db,key);
}