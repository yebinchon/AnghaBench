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
struct status_line {scalar_t__ references; int /*<<< orphan*/  screen; int /*<<< orphan*/ * active; } ;
struct client {struct status_line status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct client *c)
{
	struct status_line *sl = &c->status;

	if (--sl->references == 0) {
		FUNC1(sl->active);
		FUNC0(sl->active);
		sl->active = &sl->screen;
	}
}