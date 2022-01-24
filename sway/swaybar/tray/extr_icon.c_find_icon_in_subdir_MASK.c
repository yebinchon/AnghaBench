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
typedef  int /*<<< orphan*/  extensions ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char*,size_t,char*,char*,char*,char*,char*,...) ; 

__attribute__((used)) static char *FUNC4(char *name, char *basedir, char *theme,
		char *subdir) {
	static const char *extensions[] = {
#if HAVE_GDK_PIXBUF
		"svg",
#endif
		"png",
#if HAVE_GDK_PIXBUF
		"xpm"
#endif
	};

	size_t path_len = FUNC3(NULL, 0, "%s/%s/%s/%s.EXT", basedir, theme,
			subdir, name) + 1;
	char *path = FUNC2(path_len);

	for (size_t i = 0; i < sizeof(extensions) / sizeof(*extensions); ++i) {
		FUNC3(path, path_len, "%s/%s/%s/%s.%s", basedir, theme, subdir,
				name, extensions[i]);
		if (FUNC0(path, R_OK) == 0) {
			return path;
		}
	}

	FUNC1(path);
	return NULL;
}