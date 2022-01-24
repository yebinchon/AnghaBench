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
typedef  int u_int ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,char*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct tty *tty, u_int n)
{
	static char s[500];

	if (*s != ' ')
		FUNC0(s, ' ', sizeof s);

	while (n > sizeof s) {
		FUNC1(tty, s, sizeof s, sizeof s);
		n -= sizeof s;
	}
	if (n != 0)
		FUNC1(tty, s, n, n);
}