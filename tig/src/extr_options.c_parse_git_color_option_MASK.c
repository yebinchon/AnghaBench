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
struct line_info {int fg; int bg; int attr; } ;

/* Variables and functions */
 void* COLOR_DEFAULT ; 
 int SIZEOF_ARG ; 
 int /*<<< orphan*/  FUNC0 (char const**,int*,char*) ; 
 scalar_t__ FUNC1 (int*,char const*) ; 
 scalar_t__ FUNC2 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static struct line_info *
FUNC4(struct line_info *info, char *value)
{
	const char *argv[SIZEOF_ARG];
	int argc = 0;
	bool first_color = true;
	int i;

	if (!FUNC0(argv, &argc, value))
		return NULL;

	info->fg = COLOR_DEFAULT;
	info->bg = COLOR_DEFAULT;
	info->attr = 0;

	for (i = 0; i < argc; i++) {
		int attr = 0;

		if (!FUNC3(argv[i], "ul", 2)) {
			argv[i] = "underline";
		}
		if (FUNC1(&attr, argv[i])) {
			info->attr |= attr;

		} else if (FUNC2(&attr, argv[i])) {
			if (first_color)
				info->fg = attr;
			else
				info->bg = attr;
			first_color = false;
		}
	}
	return info;
}