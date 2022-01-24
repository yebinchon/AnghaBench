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
struct TYPE_2__ {int /*<<< orphan*/  exec_dir; } ;

/* Variables and functions */
 int FUNC0 (char const**,int /*<<< orphan*/ ) ; 
 TYPE_1__ repo ; 

bool
FUNC1(void)
{
	const char *update_index_argv[] = {
		"git", "update-index", "-q", "--unmerged", "--refresh", NULL
	};

	return FUNC0(update_index_argv, repo.exec_dir);
}