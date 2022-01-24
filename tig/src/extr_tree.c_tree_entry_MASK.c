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
struct view {int dummy; } ;
struct tree_entry {unsigned long size; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
struct line {int dummy; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int LINE_HEADER ; 
 struct line* FUNC0 (struct view*,struct tree_entry**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static struct line *
FUNC6(struct view *view, enum line_type type, const char *path,
	   const char *mode, const char *id, unsigned long size)
{
	bool custom = type == LINE_HEADER || FUNC5(path);
	struct tree_entry *entry;
	struct line *line = FUNC0(view, &entry, type, FUNC2(path), custom);

	if (!line)
		return NULL;

	FUNC3(entry->name, path, FUNC2(path));
	if (mode)
		entry->mode = FUNC4(mode, NULL, 8);
	if (id)
		FUNC1(entry->id, id);
	entry->size = size;

	return line;
}