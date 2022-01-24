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

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC2(const char *name, char **line)
{
	size_t namelen = FUNC0(name);
	bool matched = !FUNC1(name, *line, namelen);

	if (matched)
		*line += namelen;

	return matched;
}