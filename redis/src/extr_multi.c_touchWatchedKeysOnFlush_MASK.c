#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* key; TYPE_1__* db; } ;
typedef  TYPE_3__ watchedKey ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  watched_keys; } ;
typedef  TYPE_4__ client ;
struct TYPE_10__ {int /*<<< orphan*/  clients; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DIRTY_CAS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__ server ; 

void FUNC4(int dbid) {
    listIter li1, li2;
    listNode *ln;

    /* For every client, check all the waited keys */
    FUNC3(server.clients,&li1);
    while((ln = FUNC1(&li1))) {
        client *c = FUNC2(ln);
        FUNC3(c->watched_keys,&li2);
        while((ln = FUNC1(&li2))) {
            watchedKey *wk = FUNC2(ln);

            /* For every watched key matching the specified DB, if the
             * key exists, mark the client as dirty, as the key will be
             * removed. */
            if (dbid == -1 || wk->db->id == dbid) {
                if (FUNC0(wk->db->dict, wk->key->ptr) != NULL)
                    c->flags |= CLIENT_DIRTY_CAS;
            }
        }
    }
}