#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct window {TYPE_1__* active; } ;
struct TYPE_2__ {char* shell; int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

char *
FUNC3(struct window *w)
{
	char    *cmd, *s;

	cmd = FUNC0(w->active->argc, w->active->argv);
	if (cmd != NULL && *cmd != '\0')
		s = FUNC2(cmd);
	else
		s = FUNC2(w->active->shell);
	FUNC1(cmd);
	return (s);
}