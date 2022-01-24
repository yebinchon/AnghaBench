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
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {scalar_t__ save_level; TYPE_2__ state; TYPE_2__* saved_state; } ;
typedef  TYPE_1__ enum_emh_data ;
typedef  scalar_t__ INT ;
typedef  TYPE_2__ EMF_dc_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3( enum_emh_data *info, INT level )
{
    if (FUNC2(level) > info->save_level || level == 0) return;

    if (level < 0) level = info->save_level + level + 1;

    while (info->save_level >= level)
    {
        EMF_dc_state *state = info->saved_state;
        info->saved_state = state->next;
        state->next = NULL;
        if (--info->save_level < level)
            info->state = *state;
        FUNC1( FUNC0(), 0, state );
    }
}