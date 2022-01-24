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
struct paste_buffer {scalar_t__ automatic; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct paste_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct paste_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  paste_by_name ; 
 struct paste_buffer* FUNC3 (char const*) ; 
 int /*<<< orphan*/  paste_name_tree ; 
 int /*<<< orphan*/  paste_num_automatic ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char const*) ; 
 void* FUNC5 (char const*) ; 

int
FUNC6(const char *oldname, const char *newname, char **cause)
{
	struct paste_buffer	*pb, *pb_new;

	if (cause != NULL)
		*cause = NULL;

	if (oldname == NULL || *oldname == '\0') {
		if (cause != NULL)
			*cause = FUNC5("no buffer");
		return (-1);
	}
	if (newname == NULL || *newname == '\0') {
		if (cause != NULL)
			*cause = FUNC5("new name is empty");
		return (-1);
	}

	pb = FUNC3(oldname);
	if (pb == NULL) {
		if (cause != NULL)
			FUNC4(cause, "no buffer %s", oldname);
		return (-1);
	}

	pb_new = FUNC3(newname);
	if (pb_new != NULL) {
		if (cause != NULL)
			FUNC4(cause, "buffer %s already exists", newname);
		return (-1);
	}

	FUNC1(paste_name_tree, &paste_by_name, pb);

	FUNC2(pb->name);
	pb->name = FUNC5(newname);

	if (pb->automatic)
		paste_num_automatic--;
	pb->automatic = 0;

	FUNC0(paste_name_tree, &paste_by_name, pb);

	return (0);
}