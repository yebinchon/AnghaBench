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
struct icon_theme {void* dir; int /*<<< orphan*/  subdirs; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct icon_theme* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct icon_theme*) ; 
 int FUNC3 (char*,char*,char*,struct icon_theme*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char*,struct icon_theme*) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 scalar_t__ FUNC11 (char) ; 
 char* FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,char*,char*,char*) ; 
 void* FUNC14 (char*) ; 
 scalar_t__ FUNC15 (struct icon_theme*) ; 

__attribute__((used)) static struct icon_theme *FUNC16(char *basedir, char *theme_name) {
	// look for index.theme file
	size_t path_len = FUNC13(NULL, 0, "%s/%s/index.theme", basedir,
			theme_name) + 1;
	char *path = FUNC12(path_len);
	if (!path) {
		return NULL;
	}
	FUNC13(path, path_len, "%s/%s/index.theme", basedir, theme_name);
	FILE *theme_file = FUNC5(path, "r");
	FUNC6(path);
	if (!theme_file) {
		return NULL;
	}

	struct icon_theme *theme = FUNC0(1, sizeof(struct icon_theme));
	if (!theme) {
		FUNC4(theme_file);
		return NULL;
	}
	theme->subdirs = FUNC1();

	bool error = false;
	char *group = NULL;
	char *full_line = NULL;
	size_t full_len = 0;
	ssize_t nread;
	while ((nread = FUNC7(&full_line, &full_len, theme_file)) != -1) {
		char *line = full_line - 1;
		while (FUNC11(*++line)) {} // remove leading whitespace
		if (!*line || line[0] == '#') continue; // ignore blank lines & comments

		int len = nread - (line - full_line);
		while (FUNC11(line[--len])) {}
		line[++len] = '\0'; // remove trailing whitespace

		if (line[0] == '[') { // group header
			// check well-formed
			if (line[--len] != ']') {
				error = true;
				break;
			}
			int i = 1;
			for (; !FUNC10(line[i]) && line[i] != '[' && line[i] != ']'; ++i) {}
			if (i < len) {
				error = true;
				break;
			}

			// call handler
			line[len] = '\0';
			error = FUNC8(group, &line[1], theme);
			if (error) {
				break;
			}
			FUNC6(group);
			group = FUNC14(&line[1]);
		} else { // key-value pair
			if (!group) {
				error = true;
				break;
			}
			// check well-formed
			int eok = 0;
			for (; FUNC9(line[eok]) || line[eok] == '-'; ++eok) {} // TODO locale?
			int i = eok - 1;
			while (FUNC11(line[++i])) {}
			if (line[i] != '=') {
				error = true;
				break;
			}

			line[eok] = '\0'; // split into key-value pair
			char *value = &line[i];
			while (FUNC11(*++value)) {}
			// TODO unescape value
			error = FUNC3(group, line, value, theme);
			if (error) {
				break;
			}
		}
	}

	if (!error && group) {
		error = FUNC8(group, NULL, theme);
	}

	FUNC6(group);
	FUNC6(full_line);
	FUNC4(theme_file);

	if (!error && FUNC15(theme)) {
		theme->dir = FUNC14(theme_name);
		return theme;
	} else {
		FUNC2(theme);
		return NULL;
	}
}