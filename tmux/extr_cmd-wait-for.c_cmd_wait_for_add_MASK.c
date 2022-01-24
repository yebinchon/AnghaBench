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
struct wait_channel {int /*<<< orphan*/  name; int /*<<< orphan*/  lockers; int /*<<< orphan*/  waiters; scalar_t__ woken; scalar_t__ locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wait_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait_channels ; 
 struct wait_channel* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static struct wait_channel *
FUNC5(const char *name)
{
	struct wait_channel *wc;

	wc = FUNC3(sizeof *wc);
	wc->name = FUNC4(name);

	wc->locked = 0;
	wc->woken = 0;

	FUNC1(&wc->waiters);
	FUNC1(&wc->lockers);

	FUNC0(wait_channels, &wait_channels, wc);

	FUNC2("add wait channel %s", wc->name);

	return (wc);
}