#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int lines; int position; } ;
struct TYPE_3__ {int lines; int position; } ;
struct chunk_header {TYPE_2__ new; TYPE_1__ old; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct chunk_header*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const**,int*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 

bool
FUNC5(struct chunk_header *header, const char *line)
{
	FUNC1(header, 0, sizeof(*header));
	header->new.lines = header->old.lines = 1;

	if (!FUNC3(line, "@@ -"))
		line += FUNC0("@@ -") - 1;
	else if (!FUNC3(line, "@@@") &&
		 (line = FUNC4(line, '-')))
		/* Stay at that '-'. */ ;
	else
		return false;

	return  FUNC2(&line, &header->old.position, '-', false) &&
		FUNC2(&line, &header->old.lines, ',', true) &&
		FUNC2(&line, &header->new.position, '+', false) &&
		FUNC2(&line, &header->new.lines, ',', false);
}