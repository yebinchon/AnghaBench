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
struct cmd_find_state {int flags; int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd_find_state*,int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct cmd_find_state *fs, int flags)
{
	FUNC0(fs, 0, sizeof *fs);

	fs->flags = flags;

	fs->idx = -1;
}