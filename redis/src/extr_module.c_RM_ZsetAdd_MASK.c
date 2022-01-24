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
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int mode; TYPE_3__* value; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ RedisModuleString ;
typedef  TYPE_2__ RedisModuleKey ;

/* Variables and functions */
 scalar_t__ OBJ_ZSET ; 
 int REDISMODULE_ERR ; 
 int /*<<< orphan*/  REDISMODULE_KEYTYPE_ZSET ; 
 int REDISMODULE_OK ; 
 int REDISMODULE_WRITE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,double,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

int FUNC4(RedisModuleKey *key, double score, RedisModuleString *ele, int *flagsptr) {
    int flags = 0;
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value && key->value->type != OBJ_ZSET) return REDISMODULE_ERR;
    if (key->value == NULL) FUNC2(key,REDISMODULE_KEYTYPE_ZSET);
    if (flagsptr) flags = FUNC1(*flagsptr);
    if (FUNC3(key->value,score,ele->ptr,&flags,NULL) == 0) {
        if (flagsptr) *flagsptr = 0;
        return REDISMODULE_ERR;
    }
    if (flagsptr) *flagsptr = FUNC0(flags);
    return REDISMODULE_OK;
}