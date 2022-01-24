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
struct tty {int /*<<< orphan*/  ccolour; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CR ; 
 int /*<<< orphan*/  TTYC_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tty, const char *ccolour)
{
	if (*ccolour == '\0')
		FUNC1(tty, TTYC_CR);
	else
		FUNC2(tty, TTYC_CS, ccolour);
	FUNC0(tty->ccolour);
	tty->ccolour = FUNC3(ccolour);
}