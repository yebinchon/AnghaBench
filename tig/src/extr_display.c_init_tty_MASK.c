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
struct termios {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  opgrp; int /*<<< orphan*/  attr; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  die_callback ; 
 int /*<<< orphan*/  done_display ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ opt_tty ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(void)
{
	/* open */
	opt_tty.file = FUNC3("/dev/tty", "r+");
	if (!opt_tty.file)
		FUNC1("Failed to open tty for input");
	opt_tty.fd = FUNC2(opt_tty.file);

	/* attributes */
	opt_tty.attr = FUNC0(1, sizeof(struct termios));
	if (!opt_tty.attr)
		FUNC1("Failed allocation for tty attributes");
	FUNC7(opt_tty.fd, opt_tty.attr);

	/* process-group leader */
	FUNC6(SIGTTOU, SIG_IGN);
	FUNC5(FUNC4(), FUNC4());
	opt_tty.opgrp = FUNC8(opt_tty.fd);
	FUNC9(opt_tty.fd, FUNC4());
	FUNC6(SIGTTOU, SIG_DFL);

	die_callback = done_display;
}