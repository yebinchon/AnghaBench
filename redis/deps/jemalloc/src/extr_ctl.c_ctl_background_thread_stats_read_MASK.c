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
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_5__ {int /*<<< orphan*/  run_interval; } ;
typedef  TYPE_1__ background_thread_stats_t ;
struct TYPE_6__ {TYPE_1__ background_thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__* ctl_stats ; 
 int /*<<< orphan*/  have_background_thread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(tsdn_t *tsdn) {
	background_thread_stats_t *stats = &ctl_stats->background_thread;
	if (!have_background_thread ||
	    FUNC0(tsdn, stats)) {
		FUNC1(stats, 0, sizeof(background_thread_stats_t));
		FUNC2(&stats->run_interval, 0);
	}
}