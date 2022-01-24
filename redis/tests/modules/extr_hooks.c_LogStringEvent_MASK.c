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
struct TYPE_6__ {int /*<<< orphan*/  count; scalar_t__ last_val_string; } ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ EventElement ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  event_log ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(RedisModuleCtx *ctx, const char* keyname, const char* data) {
    EventElement *event = FUNC2(event_log, (void*)keyname, FUNC6(keyname), NULL);
    if (!event) {
        event = FUNC0(sizeof(EventElement));
        FUNC5(event, 0, sizeof(EventElement));
        FUNC3(event_log, (void*)keyname, FUNC6(keyname), event);
    }
    if (event->last_val_string) FUNC4(ctx, event->last_val_string);
    event->last_val_string = FUNC1(ctx, data, FUNC6(data));
    event->count++;
}