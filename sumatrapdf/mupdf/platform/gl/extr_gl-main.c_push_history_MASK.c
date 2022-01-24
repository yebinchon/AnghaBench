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
struct TYPE_6__ {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 int /*<<< orphan*/  currentpage ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* history ; 
 int history_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	if (history_count > 0 && FUNC0(history[history_count-1].loc, currentpage))
		return;
	if (history_count + 1 >= (int)FUNC2(history))
	{
		FUNC1(history, history + 1, sizeof *history * (FUNC2(history) - 1));
		history[history_count] = FUNC3();
	}
	else
	{
		history[history_count++] = FUNC3();
	}
}