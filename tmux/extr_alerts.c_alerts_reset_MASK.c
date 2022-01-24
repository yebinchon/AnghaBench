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
typedef  int /*<<< orphan*/  u_int ;
struct window {int /*<<< orphan*/  alerts_timer; int /*<<< orphan*/  id; int /*<<< orphan*/  options; int /*<<< orphan*/  flags; } ;
struct timeval {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  WINDOW_SILENCE ; 
 int /*<<< orphan*/  alerts_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct window*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 

__attribute__((used)) static void
FUNC7(struct window *w)
{
	struct timeval	tv;

	if (!FUNC2(&w->alerts_timer))
		FUNC3(&w->alerts_timer, alerts_timer, w);

	w->flags &= ~WINDOW_SILENCE;
	FUNC1(&w->alerts_timer);

	FUNC6(&tv);
	tv.tv_sec = FUNC5(w->options, "monitor-silence");

	FUNC4("@%u alerts timer reset %u", w->id, (u_int)tv.tv_sec);
	if (tv.tv_sec != 0)
		FUNC0(&w->alerts_timer, &tv);
}