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
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,char*,int*,int*) ; 

char *FUNC2(list_t *themes, list_t *basedirs, char *name, int size,
		char *theme, int *min_size, int *max_size) {
	// TODO https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html#implementation_notes
	char *icon = NULL;
	if (theme) {
		icon = FUNC1(basedirs, themes, name, size, theme,
				min_size, max_size);
	}
	if (!icon) {
		icon = FUNC1(basedirs, themes, name, size, "Hicolor",
				min_size, max_size);
	}
	if (!icon) {
		icon = FUNC0(basedirs, name, min_size, max_size);
	}
	return icon;
}