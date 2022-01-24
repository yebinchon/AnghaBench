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
 int /*<<< orphan*/  TTYC_SITM ; 
 int /*<<< orphan*/  TTYC_SMSO ; 
 int /*<<< orphan*/  global_options ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct tty *tty)
{
	const char	*s;

	if (FUNC4(tty->term, TTYC_SITM)) {
		s = FUNC0(global_options, "default-terminal");
		if (FUNC1(s, "screen") != 0 && FUNC2(s, "screen-", 7) != 0) {
			FUNC3(tty, TTYC_SITM);
			return;
		}
	}
	FUNC3(tty, TTYC_SMSO);
}