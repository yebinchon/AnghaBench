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
struct view {int dummy; } ;
struct line {int dummy; } ;

/* Variables and functions */
 struct line* FUNC0 (struct view*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

struct line *
FUNC6(struct view *view, const char *text, size_t offset)
{
	const char *start = text + offset;
	const char *data = start + FUNC4(start, " ");
	size_t len = FUNC3(data);
	char *pipe = FUNC2(data, '|');

	/* Ensure that '|' is present and the file name part contains
	 * non-space characters. */
	if (!pipe || pipe == data)
		return NULL;

	/* Detect remaining part of a diff stat line:
	 *
	 *	added                    |   40 +++++++++++
	 *	remove                   |  124 --------------------------
	 *	updated                  |   14 +----
	 *	rename.from => rename.to |    0
	 *	.../truncated file name  |   11 ++---
	 *	binary add               |  Bin 0 -> 1234 bytes
	 *	binary update            |  Bin 1234 -> 2345 bytes
	 *	binary copy              |  Bin
	 *	unmerged                 | Unmerged
	 */
	if ((data[len - 1] == '-' || data[len - 1] == '+') ||
	    FUNC5(pipe, " 0") || FUNC5(pipe, "Bin") || FUNC5(pipe, "Unmerged") ||
	    (data[len - 1] == '0' && (FUNC5(data, "=>") || !FUNC1(data, "..."))))
		return FUNC0(view, text);
	return NULL;
}