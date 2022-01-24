#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_10__ {int mode; TYPE_1__* value; int /*<<< orphan*/  key; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ RedisModuleKey ;

/* Variables and functions */
 scalar_t__ OBJ_STRING ; 
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_WRITE ; 
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC10(RedisModuleKey *key, size_t newlen) {
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value && key->value->type != OBJ_STRING) return REDISMODULE_ERR;
    if (newlen > 512*1024*1024) return REDISMODULE_ERR;

    /* Empty key and new len set to 0. Just return REDISMODULE_OK without
     * doing anything. */
    if (key->value == NULL && newlen == 0) return REDISMODULE_OK;

    if (key->value == NULL) {
        /* Empty key: create it with the new size. */
        robj *o = FUNC0(OBJ_STRING,FUNC7(NULL, newlen));
        FUNC9(key->db,key->key,o);
        key->value = o;
        FUNC2(o);
    } else {
        /* Unshare and resize. */
        key->value = FUNC1(key->db, key->key, key->value);
        size_t curlen = FUNC6(key->value->ptr);
        if (newlen > curlen) {
            key->value->ptr = FUNC5(key->value->ptr,newlen);
        } else if (newlen < curlen) {
            FUNC8(key->value->ptr,0,newlen-1);
            /* If the string is too wasteful, reallocate it. */
            if (FUNC6(key->value->ptr) < FUNC4(key->value->ptr))
                key->value->ptr = FUNC3(key->value->ptr);
        }
    }
    return REDISMODULE_OK;
}