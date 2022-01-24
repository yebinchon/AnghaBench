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
struct line {int dummy; } ;
struct io {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct line*) ; 
 int /*<<< orphan*/  FUNC1 (struct io*,char const*,int) ; 
 scalar_t__ FUNC2 (struct line*,struct line*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(struct io *io, struct line *line, struct line *end)
{
	while (line < end) {
		const char *text = FUNC0(line);

		if (!FUNC1(io, text, FUNC3(text)) ||
		    !FUNC1(io, "\n", 1))
			return false;
		line++;
		if (FUNC2(line, end))
			break;
	}

	return true;
}