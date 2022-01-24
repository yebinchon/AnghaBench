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
typedef  int uint64_t ;
typedef  int clock_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int hz ; 
 scalar_t__ l2arc_feed_again ; 
 int l2arc_feed_min_ms ; 
 int l2arc_feed_secs ; 

__attribute__((used)) static clock_t
FUNC3(clock_t began, uint64_t wanted, uint64_t wrote)
{
	clock_t interval, next, now;

	/*
	 * If the ARC lists are busy, increase our write rate; if the
	 * lists are stale, idle back.  This is achieved by checking
	 * how much we previously wrote - if it was more than half of
	 * what we wanted, schedule the next write much sooner.
	 */
	if (l2arc_feed_again && wrote > (wanted / 2))
		interval = (hz * l2arc_feed_min_ms) / 1000;
	else
		interval = hz * l2arc_feed_secs;

	now = FUNC2();
	next = FUNC0(now, FUNC1(now + interval, began + interval));

	return (next);
}