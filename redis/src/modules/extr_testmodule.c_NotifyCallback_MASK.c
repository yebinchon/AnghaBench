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
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(RedisModuleCtx *ctx, int type, const char *event,
                   RedisModuleString *key) {
  /* Increment a counter on the notifications: for each key notified we
   * increment a counter */
  FUNC1(ctx, "notice", "Got event type %d, event %s, key %s", type,
                  event, FUNC2(key, NULL));

  FUNC0(ctx, "HINCRBY", "csc", "notifications", key, "1");
  return REDISMODULE_OK;
}