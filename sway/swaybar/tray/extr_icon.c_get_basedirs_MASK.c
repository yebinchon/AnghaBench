#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char** we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;
struct TYPE_10__ {int length; int /*<<< orphan*/ * items; } ;
typedef  TYPE_2__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  WRDE_UNDEF ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static list_t *FUNC12(void) {
	list_t *basedirs = FUNC0();
	FUNC4(basedirs, FUNC8("$HOME/.icons")); // deprecated

	char *data_home = FUNC3("XDG_DATA_HOME");
	FUNC4(basedirs, FUNC8(data_home && *data_home ?
			"$XDG_DATA_HOME/icons" : "$HOME/.local/share/icons"));

	FUNC4(basedirs, FUNC8("/usr/share/pixmaps"));

	char *data_dirs = FUNC3("XDG_DATA_DIRS");
	if (!(data_dirs && *data_dirs)) {
		data_dirs = "/usr/local/share:/usr/share";
	}
	data_dirs = FUNC8(data_dirs);
	char *dir = FUNC9(data_dirs, ":");
	do {
		size_t path_len = FUNC7(NULL, 0, "%s/icons", dir) + 1;
		char *path = FUNC6(path_len);
		FUNC7(path, path_len, "%s/icons", dir);
		FUNC4(basedirs, path);
	} while ((dir = FUNC9(NULL, ":")));
	FUNC2(data_dirs);

	list_t *basedirs_expanded = FUNC0();
	for (int i = 0; i < basedirs->length; ++i) {
		wordexp_t p;
		if (FUNC10(basedirs->items[i], &p, WRDE_UNDEF) == 0) {
			if (FUNC1(p.we_wordv[0])) {
				FUNC4(basedirs_expanded, FUNC8(p.we_wordv[0]));
			}
			FUNC11(&p);
		}
	}

	FUNC5(basedirs);

	return basedirs_expanded;
}