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
struct line {scalar_t__ type; struct grep_line* data; } ;
struct grep_line {char* file; } ;

/* Variables and functions */
 scalar_t__ LINE_DEFAULT ; 
 scalar_t__ LINE_DELIMITER ; 
 int /*<<< orphan*/  FUNC0 (struct line const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct grep_line *
FUNC2(const struct line *line)
{
	static struct grep_line grep_line;

	if (line->type == LINE_DEFAULT)
		return line->data;

	grep_line.file = line->type == LINE_DELIMITER ? "" : FUNC1(FUNC0(line));
	return &grep_line;
}