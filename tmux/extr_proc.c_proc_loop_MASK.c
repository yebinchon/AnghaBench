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
struct tmuxproc {int /*<<< orphan*/  name; int /*<<< orphan*/  exit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVLOOP_ONCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct tmuxproc *tp, int (*loopcb)(void))
{
	FUNC1("%s loop enter", tp->name);
	do
		FUNC0(EVLOOP_ONCE);
	while (!tp->exit && (loopcb == NULL || !loopcb ()));
	FUNC1("%s loop exit", tp->name);
}