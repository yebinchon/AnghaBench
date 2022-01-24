#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ last_val_string; } ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  TYPE_1__ EventElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(RedisModuleCtx *ctx, EventElement *event) {
    if (event->last_val_string)
        FUNC1(ctx, event->last_val_string);
    FUNC0(event);
}