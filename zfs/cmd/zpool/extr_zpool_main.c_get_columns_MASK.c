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
struct winsize {int ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void)
{
	struct winsize ws;
	int columns = 80;
	int error;

	if (FUNC1(STDOUT_FILENO)) {
		error = FUNC0(STDOUT_FILENO, TIOCGWINSZ, &ws);
		if (error == 0)
			columns = ws.ws_col;
	} else {
		columns = 999;
	}

	return (columns);
}