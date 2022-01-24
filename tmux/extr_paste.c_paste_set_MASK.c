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
struct paste_buffer {char* data; size_t size; int /*<<< orphan*/  created; scalar_t__ order; scalar_t__ automatic; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct paste_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  paste_by_name ; 
 int /*<<< orphan*/  paste_by_time ; 
 int /*<<< orphan*/  FUNC3 (struct paste_buffer*) ; 
 struct paste_buffer* FUNC4 (char const*) ; 
 int /*<<< orphan*/  paste_name_tree ; 
 int /*<<< orphan*/  paste_next_order ; 
 int /*<<< orphan*/  paste_time_tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct paste_buffer* FUNC6 (int) ; 
 void* FUNC7 (char const*) ; 

int
FUNC8(char *data, size_t size, const char *name, char **cause)
{
	struct paste_buffer	*pb, *old;

	if (cause != NULL)
		*cause = NULL;

	if (size == 0) {
		FUNC1(data);
		return (0);
	}
	if (name == NULL) {
		FUNC2(NULL, data, size);
		return (0);
	}

	if (*name == '\0') {
		if (cause != NULL)
			*cause = FUNC7("empty buffer name");
		return (-1);
	}

	pb = FUNC6(sizeof *pb);

	pb->name = FUNC7(name);

	pb->data = data;
	pb->size = size;

	pb->automatic = 0;
	pb->order = paste_next_order++;

	pb->created = FUNC5(NULL);

	if ((old = FUNC4(name)) != NULL)
		FUNC3(old);

	FUNC0(paste_name_tree, &paste_by_name, pb);
	FUNC0(paste_time_tree, &paste_by_time, pb);

	return (0);
}