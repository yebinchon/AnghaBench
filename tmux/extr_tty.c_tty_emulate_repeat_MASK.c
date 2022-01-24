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
typedef  int /*<<< orphan*/  u_int ;
struct tty {int /*<<< orphan*/  term; } ;
typedef  enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct tty *tty, enum tty_code_code code,
    enum tty_code_code code1, u_int n)
{
	if (FUNC2(tty->term, code))
		FUNC1(tty, code, n);
	else {
		while (n-- > 0)
			FUNC0(tty, code1);
	}
}