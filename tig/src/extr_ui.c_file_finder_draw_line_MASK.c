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
struct file_finder_line {char* text; } ;
struct file_finder {char** search; int /*<<< orphan*/  win; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_STANDOUT ; 
 char* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct file_finder *finder, struct file_finder_line *line)
{
	const char **search = finder->search;
	const char *text = line->text;
	const char *pos;

	for (; *text && search && *search && (pos = FUNC0(text, *search)); search++) {
		if (text < pos)
			FUNC1(finder->win, text, pos - text);
		FUNC4(finder->win, A_STANDOUT);
		FUNC1(finder->win, pos, 1);
		FUNC3(finder->win, A_STANDOUT);
		text = pos + 1;
	}

	if (*text)
		FUNC2(finder->win, text);
}