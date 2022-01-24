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

/* Variables and functions */
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int got_SIGHUP ; 
 int /*<<< orphan*/  handle_sighup ; 
 int /*<<< orphan*/  handle_sigterm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	/*
	 * do not use the default `bgworker_die` sigterm handler because it does
	 * not respect critical sections
	 */
	FUNC1(SIGTERM, handle_sigterm);
	FUNC1(SIGHUP, handle_sighup);

	/* Some SIGHUPS may already have been dropped, so we must load the file here */
	got_SIGHUP = false;
	FUNC0(PGC_SIGHUP);
}