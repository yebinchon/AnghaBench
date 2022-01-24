#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long last_val_int; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ EventElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  event_log ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(RedisModuleCtx *ctx, const char* keyname, long data) {
    FUNC0(ctx);
    EventElement *event = FUNC2(event_log, (void*)keyname, FUNC5(keyname), NULL);
    if (!event) {
        event = FUNC1(sizeof(EventElement));
        FUNC4(event, 0, sizeof(EventElement));
        FUNC3(event_log, (void*)keyname, FUNC5(keyname), event);
    }
    event->last_val_int = data;
    event->count++;
}