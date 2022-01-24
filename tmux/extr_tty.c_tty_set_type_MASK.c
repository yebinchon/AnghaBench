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
struct tty {int term_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*,char*) ; 
 scalar_t__ FUNC1 (struct tty*) ; 

void
FUNC2(struct tty *tty, int type)
{
	tty->term_type = type;

	if (FUNC1(tty))
		FUNC0(tty, "\033[?69h"); /* DECLRMM */
}