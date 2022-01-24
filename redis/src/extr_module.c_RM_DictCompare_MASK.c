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
struct TYPE_6__ {int /*<<< orphan*/  ri; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ RedisModuleString ;
typedef  TYPE_2__ RedisModuleDictIter ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(RedisModuleDictIter *di, const char *op, RedisModuleString *key) {
    if (FUNC1(&di->ri)) return REDISMODULE_ERR;
    int res = FUNC0(&di->ri,op,key->ptr,FUNC2(key->ptr));
    return res ? REDISMODULE_OK : REDISMODULE_ERR;
}