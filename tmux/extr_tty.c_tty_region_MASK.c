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
struct tty {scalar_t__ rlower; scalar_t__ rupper; scalar_t__ cx; scalar_t__ sx; scalar_t__ cy; int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct tty *tty, u_int rupper, u_int rlower)
{
	if (tty->rlower == rlower && tty->rupper == rupper)
		return;
	if (!FUNC2(tty->term, TTYC_CSR))
		return;

	tty->rupper = rupper;
	tty->rlower = rlower;

	/*
	 * Some terminals (such as PuTTY) do not correctly reset the cursor to
	 * 0,0 if it is beyond the last column (they do not reset their wrap
	 * flag so further output causes a line feed). As a workaround, do an
	 * explicit move to 0 first.
	 */
	if (tty->cx >= tty->sx)
		FUNC0(tty, 0, tty->cy);

	FUNC1(tty, TTYC_CSR, tty->rupper, tty->rlower);
	tty->cx = tty->cy = UINT_MAX;
}