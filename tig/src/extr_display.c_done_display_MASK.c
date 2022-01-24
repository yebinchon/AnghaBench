#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  opgrp; int /*<<< orphan*/  fd; int /*<<< orphan*/ * attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cursed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ opt_tty ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ status_win ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(void)
{
	if (cursed) {
		if (status_win) {
			FUNC7(status_win);
			FUNC1();
		}
		FUNC0(1);
		FUNC2();
	}
	cursed = false;

	if (opt_tty.attr) {
		FUNC5(opt_tty.fd, TCSAFLUSH, opt_tty.attr);
		FUNC3(opt_tty.attr);
		opt_tty.attr = NULL;
	}
	FUNC4(SIGTTOU, SIG_IGN);
	FUNC6(opt_tty.fd, opt_tty.opgrp);
	FUNC4(SIGTTOU, SIG_DFL);
}