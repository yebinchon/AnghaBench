#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC3(RedisModuleCtx *ctx, RedisModuleString *str, const char *buf, size_t len) {
    FUNC0(ctx);
    str = FUNC1(str);
    if (str == NULL) return REDISMODULE_ERR;
    str->ptr = FUNC2(str->ptr,buf,len);
    return REDISMODULE_OK;
}