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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_WRITTEN_PROP_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *dataset_name, const char *prop_name,
    char *snap_name)
{
	FUNC0(FUNC4(prop_name));
	const char *name = prop_name + ZFS_WRITTEN_PROP_PREFIX_LEN;
	if (FUNC2(name, '@') == NULL) {
		(void) FUNC1(snap_name, "%s@%s", dataset_name, name);
	} else {
		(void) FUNC3(snap_name, name);
	}
}