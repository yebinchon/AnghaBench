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
struct icon_theme {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct icon_theme*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct icon_theme* FUNC4 (char*,char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static list_t *FUNC6(char *basedir) {
	DIR *dir;
	if (!(dir = FUNC3(basedir))) {
		return NULL;
	}

	list_t *themes = FUNC1();
	struct dirent *entry;
	while ((entry = FUNC5(dir))) {
		if (entry->d_name[0] == '.') continue;

		struct icon_theme *theme = FUNC4(basedir, entry->d_name);
		if (theme) {
			FUNC2(themes, theme);
		}
	}
	FUNC0(dir);
	return themes;
}