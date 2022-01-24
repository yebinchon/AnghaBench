#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event ;
struct TYPE_6__ {int /*<<< orphan*/  vimWindow; } ;
struct TYPE_5__ {int /*<<< orphan*/  rid; int /*<<< orphan*/  event_state; int /*<<< orphan*/  event_f; } ;
typedef  TYPE_1__ PhWindowEvent_t ;

/* Variables and functions */
 int /*<<< orphan*/  Ph_WM_EVSTATE_HIDE ; 
 int /*<<< orphan*/  Ph_WM_HIDE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ gui ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(void)
{
    PhWindowEvent_t event;

    FUNC2(&event, 0, sizeof (event));
    event.event_f = Ph_WM_HIDE;
    event.event_state = Ph_WM_EVSTATE_HIDE;
    event.rid = FUNC1(gui.vimWindow);
    FUNC0(&event);
}