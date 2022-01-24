#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {int /*<<< orphan*/  watched_keys; } ;
typedef  TYPE_1__ redisDb ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DIRTY_CAS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(redisDb *db, robj *key) {
    list *clients;
    listIter li;
    listNode *ln;

    if (FUNC1(db->watched_keys) == 0) return;
    clients = FUNC0(db->watched_keys, key);
    if (!clients) return;

    /* Mark all the clients watching this key as CLIENT_DIRTY_CAS */
    /* Check if we are already watching for this key */
    FUNC4(clients,&li);
    while((ln = FUNC2(&li))) {
        client *c = FUNC3(ln);

        c->flags |= CLIENT_DIRTY_CAS;
    }
}