#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct icon_theme_subdir {TYPE_1__* subdirs; struct icon_theme_subdir* name; struct icon_theme_subdir* dir; int /*<<< orphan*/  directories; struct icon_theme_subdir* inherits; struct icon_theme_subdir* comment; } ;
struct icon_theme {TYPE_1__* subdirs; struct icon_theme* name; struct icon_theme* dir; int /*<<< orphan*/  directories; struct icon_theme* inherits; struct icon_theme* comment; } ;
struct TYPE_2__ {int length; struct icon_theme_subdir** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icon_theme_subdir*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct icon_theme *theme) {
	if (!theme) {
		return;
	}
	FUNC0(theme->name);
	FUNC0(theme->comment);
	FUNC0(theme->inherits);
	FUNC2(theme->directories);
	FUNC0(theme->dir);

	for (int i = 0; i < theme->subdirs->length; ++i) {
		struct icon_theme_subdir *subdir = theme->subdirs->items[i];
		FUNC0(subdir->name);
		FUNC0(subdir);
	}
	FUNC1(theme->subdirs);
	FUNC0(theme);
}