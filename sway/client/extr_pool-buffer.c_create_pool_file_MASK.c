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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,size_t) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(size_t size, char **name) {
	static const char template[] = "sway-client-XXXXXX";
	const char *path = FUNC3("XDG_RUNTIME_DIR");
	if (path == NULL) {
		FUNC1(stderr, "XDG_RUNTIME_DIR is not set\n");
		return -1;
	}

	size_t name_size = FUNC7(template) + 1 + FUNC7(path) + 1;
	*name = FUNC4(name_size);
	if (*name == NULL) {
		FUNC1(stderr, "allocation failed\n");
		return -1;
	}
	FUNC6(*name, name_size, "%s/%s", path, template);

	int fd = FUNC5(*name);
	if (fd < 0) {
		return -1;
	}

	if (!FUNC8(fd, true)) {
		FUNC0(fd);
		return -1;
	}

	if (FUNC2(fd, size) < 0) {
		FUNC0(fd);
		return -1;
	}

	return fd;
}