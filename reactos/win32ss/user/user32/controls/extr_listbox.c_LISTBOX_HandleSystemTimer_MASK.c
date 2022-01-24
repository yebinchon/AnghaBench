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
struct TYPE_4__ {int /*<<< orphan*/  self; int /*<<< orphan*/  focus_item; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LB_DESCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_TIMER_ID ; 
 int /*<<< orphan*/  LB_TIMER_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LISTBOX_Timer ; 

__attribute__((used)) static LRESULT FUNC2( LB_DESCR *descr )
{
    if (!FUNC1( descr, descr->focus_item, LISTBOX_Timer ))
    {
        FUNC0( descr->self, LB_TIMER_ID );
        LISTBOX_Timer = LB_TIMER_NONE;
    }
    return 0;
}