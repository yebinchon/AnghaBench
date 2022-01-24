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
struct icon_theme_subdir {char* name; int size; int max_size; int min_size; int threshold; int /*<<< orphan*/  type; } ;
struct icon_theme {TYPE_1__* subdirs; int /*<<< orphan*/  directories; void* inherits; void* comment; void* name; } ;
struct TYPE_2__ {int length; struct icon_theme_subdir** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED ; 
 int /*<<< orphan*/  SCALABLE ; 
 int /*<<< orphan*/  THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 void* FUNC2 (char*) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(char *group, char *key, char *value,
		struct icon_theme *theme) {
	if (FUNC1(group, "Icon Theme") == 0) {
		if (FUNC1(key, "Name") == 0) {
			theme->name = FUNC2(value);
		} else if (FUNC1(key, "Comment") == 0) {
			theme->comment = FUNC2(value);
		} else if (FUNC1(key, "Inherits") == 0) {
			theme->inherits = FUNC2(value);
		} else if (FUNC1(key, "Directories") == 0) {
			theme->directories = FUNC0(value, ",");
		} // Ignored: ScaledDirectories, Hidden, Example
	} else {
		if (theme->subdirs->length == 0) { // skip
			return false;
		}

		struct icon_theme_subdir *subdir =
			theme->subdirs->items[theme->subdirs->length - 1];
		if (FUNC1(subdir->name, group) != 0) { // skip
			return false;
		}

		char *end;
		int n = FUNC3(value, &end, 10);
		if (FUNC1(key, "Size") == 0) {
			subdir->size = n;
			return *end != '\0';
		} else if (FUNC1(key, "Type") == 0) {
			if (FUNC1(value, "Fixed") == 0) {
				subdir->type = FIXED;
			} else if (FUNC1(value, "Scalable") == 0) {
				subdir->type = SCALABLE;
			} else if (FUNC1(value, "Threshold") == 0) {
				subdir->type = THRESHOLD;
			} else {
				return true;
			}
		} else if (FUNC1(key, "MaxSize") == 0) {
			subdir->max_size = n;
			return *end != '\0';
		} else if (FUNC1(key, "MinSize") == 0) {
			subdir->min_size = n;
			return *end != '\0';
		} else if (FUNC1(key, "Threshold") == 0) {
			subdir->threshold = n;
			return *end != '\0';
		} // Ignored: Scale, Applications
	}
	return false;
}