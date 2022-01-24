#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_8__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  expires; } ;
typedef  TYPE_2__ redisDb ;
struct TYPE_9__ {scalar_t__ cluster_enabled; } ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(redisDb *db, robj *key) {
    /* Deleting an entry from the expires dict will not free the sds of
     * the key, because it is shared with the main dictionary. */
    if (FUNC1(db->expires) > 0) FUNC0(db->expires,key->ptr);
    if (FUNC0(db->dict,key->ptr) == DICT_OK) {
        if (server.cluster_enabled) FUNC2(key);
        return 1;
    } else {
        return 0;
    }
}