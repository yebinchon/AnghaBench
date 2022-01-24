#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int refcount; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_11__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  expires; } ;
typedef  TYPE_2__ redisDb ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_12__ {scalar_t__ cluster_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_LAZY_FREE ; 
 size_t LAZYFREE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  lazyfree_objects ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int FUNC10(redisDb *db, robj *key) {
    /* Deleting an entry from the expires dict will not free the sds of
     * the key, because it is shared with the main dictionary. */
    if (FUNC6(db->expires) > 0) FUNC2(db->expires,key->ptr);

    /* If the value is composed of a few allocations, to free in a lazy way
     * is actually just slower... So under a certain limit we just free
     * the object synchronously. */
    dictEntry *de = FUNC7(db->dict,key->ptr);
    if (de) {
        robj *val = FUNC4(de);
        size_t free_effort = FUNC8(val);

        /* If releasing the object is too much work, do it in the background
         * by adding the object to the lazy free list.
         * Note that if the object is shared, to reclaim it now it is not
         * possible. This rarely happens, however sometimes the implementation
         * of parts of the Redis core may call incrRefCount() to protect
         * objects, and then call dbDelete(). In this case we'll fall
         * through and reach the dictFreeUnlinkedEntry() call, that will be
         * equivalent to just calling decrRefCount(). */
        if (free_effort > LAZYFREE_THRESHOLD && val->refcount == 1) {
            FUNC0(lazyfree_objects,1);
            FUNC1(BIO_LAZY_FREE,val,NULL,NULL);
            FUNC5(db->dict,de,NULL);
        }
    }

    /* Release the key-val pair, or just the key if we set the val
     * field to NULL in order to lazy free it later. */
    if (de) {
        FUNC3(db->dict,de);
        if (server.cluster_enabled) FUNC9(key);
        return 1;
    } else {
        return 0;
    }
}