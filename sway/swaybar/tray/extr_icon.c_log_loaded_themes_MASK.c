#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct icon_theme {char const* name; } ;
struct TYPE_3__ {scalar_t__ length; struct icon_theme** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(list_t *themes) {
	if (themes->length == 0) {
		FUNC4(SWAY_INFO, "Warning: no icon themes loaded");
		return;
	}

	const char sep[] = ", ";
	size_t sep_len = FUNC3(sep);

	size_t len = 0;
	for (int i = 0; i < themes->length; ++i) {
		struct icon_theme *theme = themes->items[i];
		len += FUNC3(theme->name) + sep_len;
	}

	char *str = FUNC1(len + 1);
	if (!str) {
		return;
	}
	char *p = str;
	for (int i = 0; i < themes->length; ++i) {
		if (i > 0) {
			FUNC2(p, sep, sep_len);
			p += sep_len;
		}

		struct icon_theme *theme = themes->items[i];
		size_t name_len = FUNC3(theme->name);
		FUNC2(p, theme->name, name_len);
		p += name_len;
	}
	*p = '\0';

	FUNC4(SWAY_DEBUG, "Loaded icon themes: %s", str);
	FUNC0(str);
}