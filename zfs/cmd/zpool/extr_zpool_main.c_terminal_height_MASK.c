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
struct winsize {scalar_t__ ws_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void)
{
	struct winsize win;

	if (FUNC1(STDOUT_FILENO) == 0)
		return (-1);

	if (FUNC0(STDOUT_FILENO, TIOCGWINSZ, &win) != -1 && win.ws_row > 0)
		return (win.ws_row);

	return (-1);
}