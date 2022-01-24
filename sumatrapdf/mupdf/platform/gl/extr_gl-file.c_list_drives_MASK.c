#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int lineheight; } ;

/* Variables and functions */
 int PATH_MAX ; 
 TYPE_2__* common_dirs ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC4 (struct list*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct list*) ; 
 scalar_t__ FUNC6 (struct list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	static struct list drive_list;
	char dir[PATH_MAX], vis[PATH_MAX];
	const char *home = FUNC0("HOME");
	const char *user = FUNC0("USER");
	int i;

	FUNC4(&drive_list, FUNC3(common_dirs), 0, FUNC3(common_dirs) * ui.lineheight + 4);

	for (i = 0; i < (int)FUNC3(common_dirs); ++i)
		if (FUNC1(home, user, i, dir, vis))
			if (FUNC6(&drive_list, common_dirs[i].name, vis, 0))
				FUNC2(dir);

	FUNC5(&drive_list);
}