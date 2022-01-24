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
struct timer_list {int dummy; } ;
struct spl_task_timer {int /*<<< orphan*/  task; } ;
typedef  scalar_t__ spl_timer_list_t ;

/* Variables and functions */
 struct spl_task_timer* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct spl_task_timer* task_timer ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(spl_timer_list_t t)
{
	struct timer_list *tmr = (struct timer_list *)t;
	struct spl_task_timer *task_timer = FUNC0(task_timer, tmr, timer);

	FUNC1(task_timer->task);
}