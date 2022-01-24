#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * last_val_string; scalar_t__ last_val_int; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleDictIter ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ EventElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_log ; 

void FUNC6(RedisModuleCtx *ctx)
{
    RedisModuleString *key;
    EventElement *event;
    RedisModuleDictIter *iter = FUNC1(event_log, "^", NULL);
    while((key = FUNC3(ctx, iter, (void**)&event)) != NULL) {
        event->count = 0;
        event->last_val_int = 0;
        if (event->last_val_string) FUNC5(ctx, event->last_val_string);
        event->last_val_string = NULL;
        FUNC0(event_log, key, NULL);
        FUNC4(event);
    }
    FUNC2(iter);
}