#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RedisModuleDict {int /*<<< orphan*/  rax; } ;
typedef  struct RedisModuleDict RedisModuleDict ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  REDISMODULE_AM_DICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RedisModuleDict*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct RedisModuleDict* FUNC2 (int) ; 

RedisModuleDict *FUNC3(RedisModuleCtx *ctx) {
    struct RedisModuleDict *d = FUNC2(sizeof(*d));
    d->rax = FUNC1();
    if (ctx != NULL) FUNC0(ctx,REDISMODULE_AM_DICT,d);
    return d;
}