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
struct winlink {int /*<<< orphan*/  window; int /*<<< orphan*/  session; } ;
struct cmd_find_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd_find_state*,struct winlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct cmd_find_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(const char *name, struct winlink *wl)
{
	struct cmd_find_state	fs;

	FUNC0(&fs, wl, 0);
	FUNC1(name, &fs, NULL, wl->session, wl->window, NULL);
}