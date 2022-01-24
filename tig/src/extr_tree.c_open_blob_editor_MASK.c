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
 int SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const**,int) ; 
 int FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(const char *id, const char *name, unsigned int lineno)
{
	const char *blob_argv[] = { "git", "cat-file", "blob", id, NULL };
	char file[SIZEOF_STR];
	int fd;

	if (!name)
		name = "unknown";

	if (!FUNC5(file, "%s/tigblob.XXXXXX.%s", FUNC0(), name)) {
		FUNC4("Temporary file name is too long");
		return;
	}

	fd = FUNC2(file, FUNC6(name) + 1);

	if (fd == -1)
		FUNC4("Failed to create temporary file");
	else if (!FUNC1(blob_argv, fd))
		FUNC4("Failed to save blob data to file");
	else
		FUNC3(file, lineno);
	if (fd != -1)
		FUNC7(file);
}