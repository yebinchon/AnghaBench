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
struct tty {int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_FSL ; 
 int /*<<< orphan*/  TTYC_TSL ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct tty *tty, const char *title)
{
	if (!FUNC2(tty->term, TTYC_TSL) ||
	    !FUNC2(tty->term, TTYC_FSL))
		return;

	FUNC0(tty, TTYC_TSL);
	FUNC1(tty, title);
	FUNC0(tty, TTYC_FSL);
}