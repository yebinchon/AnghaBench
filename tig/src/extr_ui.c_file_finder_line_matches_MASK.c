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

/* Variables and functions */
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static size_t
FUNC2(struct file_finder_line *line, const char **search)
{
	const char *text = line->text;
	const char *pos;
	size_t matches = 0;

	for (; *text && *search && (pos = FUNC1(text, *search)); search++) {
		text = pos + FUNC0(*search);
		matches++;
	}

	return matches;
}