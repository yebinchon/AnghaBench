#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  key; TYPE_1__* db; } ;
typedef  TYPE_2__ watchedKey ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_11__ {int /*<<< orphan*/ * watched_keys; } ;
typedef  TYPE_3__ client ;
struct TYPE_9__ {int /*<<< orphan*/  watched_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void FUNC11(client *c) {
    listIter li;
    listNode *ln;

    if (FUNC4(c->watched_keys) == 0) return;
    FUNC7(c->watched_keys,&li);
    while((ln = FUNC5(&li))) {
        list *clients;
        watchedKey *wk;

        /* Lookup the watched key -> clients list and remove the client
         * from the list */
        wk = FUNC6(ln);
        clients = FUNC2(wk->db->watched_keys, wk->key);
        FUNC9(c,NULL,clients != NULL);
        FUNC3(clients,FUNC8(clients,c));
        /* Kill the entry at all if this was the only client */
        if (FUNC4(clients) == 0)
            FUNC1(wk->db->watched_keys, wk->key);
        /* Remove this watched key from the client->watched list */
        FUNC3(c->watched_keys,ln);
        FUNC0(wk->key);
        FUNC10(wk);
    }
}