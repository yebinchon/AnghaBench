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
struct session {scalar_t__ statuslines; int statusat; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

void
FUNC1(struct session *s)
{
	s->statuslines = FUNC0(s->options, "status");
	if (s->statuslines == 0)
		s->statusat = -1;
	else if (FUNC0(s->options, "status-position") == 0)
		s->statusat = 0;
	else
		s->statusat = 1;
}