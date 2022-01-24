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
typedef  scalar_t__ u_int ;
struct tty {scalar_t__ rleft; scalar_t__ rright; int sx; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  rlower; int /*<<< orphan*/  rupper; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tty, u_int rleft, u_int rright)
{
	char s[64];

	if (!FUNC3(tty))
		return;
	if (tty->rleft == rleft && tty->rright == rright)
		return;

	FUNC1(tty, TTYC_CSR, tty->rupper, tty->rlower);

	tty->rleft = rleft;
	tty->rright = rright;

	if (rleft == 0 && rright == tty->sx - 1)
		FUNC0(s, sizeof s, "\033[s");
	else
		FUNC0(s, sizeof s, "\033[%u;%us", rleft + 1, rright + 1);
	FUNC2(tty, s);
	tty->cx = tty->cy = UINT_MAX;
}