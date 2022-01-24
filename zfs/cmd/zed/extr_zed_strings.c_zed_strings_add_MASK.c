#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ zed_strings_t ;
typedef  int /*<<< orphan*/  zed_strings_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC5(zed_strings_t *zsp, const char *key, const char *s)
{
	zed_strings_node_t *newp, *oldp;

	if (!zsp || !s) {
		errno = EINVAL;
		return (-1);
	}
	if (key == s)
		key = NULL;

	newp = FUNC0(key, s);
	if (!newp)
		return (-1);

	oldp = FUNC3(&zsp->tree, newp, NULL);
	if (oldp) {
		FUNC4(&zsp->tree, oldp);
		FUNC1(oldp);
	}
	FUNC2(&zsp->tree, newp);
	return (0);
}