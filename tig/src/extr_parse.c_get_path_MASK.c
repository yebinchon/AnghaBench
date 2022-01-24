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
struct path_entry {char const* path; } ;

/* Variables and functions */
 struct path_entry* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct path_entry*) ; 
 int /*<<< orphan*/  path_cache ; 
 struct path_entry* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,struct path_entry*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,scalar_t__) ; 

const char *
FUNC6(const char *path)
{
	struct path_entry *entry = FUNC2(&path_cache, path);

	if (!entry) {
		entry = FUNC0(1, sizeof(*entry) + FUNC4(path));
		if (!entry || !FUNC3(&path_cache, path, entry)) {
			FUNC1(entry);
			return NULL;
		}
		FUNC5(entry->path, path, FUNC4(path));
	}

	return entry->path;
}