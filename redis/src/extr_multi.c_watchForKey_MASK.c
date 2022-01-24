#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * watched_keys; TYPE_1__* db; int /*<<< orphan*/ * key; } ;
typedef  TYPE_2__ watchedKey ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
typedef  TYPE_2__ client ;
struct TYPE_8__ {int /*<<< orphan*/  watched_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int) ; 

void FUNC10(client *c, robj *key) {
    list *clients = NULL;
    listIter li;
    listNode *ln;
    watchedKey *wk;

    /* Check if we are already watching for this key */
    FUNC8(c->watched_keys,&li);
    while((ln = FUNC6(&li))) {
        wk = FUNC7(ln);
        if (wk->db == c->db && FUNC2(key,wk->key))
            return; /* Key already watched */
    }
    /* This key is not already watched in this DB. Let's add it */
    clients = FUNC1(c->db->watched_keys,key);
    if (!clients) {
        clients = FUNC5();
        FUNC0(c->db->watched_keys,key,clients);
        FUNC3(key);
    }
    FUNC4(clients,c);
    /* Add the new key to the list of keys watched by this client */
    wk = FUNC9(sizeof(*wk));
    wk->key = key;
    wk->db = c->db;
    FUNC3(key);
    FUNC4(c->watched_keys,wk);
}