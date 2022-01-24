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
struct view {TYPE_1__* env; } ;
struct line {scalar_t__ type; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int /*<<< orphan*/  cdup; } ;
struct TYPE_3__ {char* file; unsigned int lineno; } ;

/* Variables and functions */
 scalar_t__ LINE_DIFF_STAT ; 
 int REQ_NONE ; 
 int /*<<< orphan*/  R_OK ; 
 int SIZEOF_STR ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct view*,struct line*) ; 
 char* FUNC2 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,unsigned int) ; 
 TYPE_2__ repo ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*) ; 

enum request
FUNC6(struct view *view, enum request request, struct line *line)
{
	const char *file;
	char path[SIZEOF_STR];
	unsigned int lineno;

	if (line->type == LINE_DIFF_STAT) {
		file = view->env->file;
		lineno = view->env->lineno;
	} else {
		file = FUNC2(view, line);
		lineno = FUNC1(view, line);
	}

	if (!file) {
		FUNC4("Nothing to edit");
		return REQ_NONE;
	}

	if (!FUNC5(path, repo.cdup, file) || FUNC0(path, R_OK)) {
		FUNC4("Failed to open file: %s", file);
		return REQ_NONE;
	}

	FUNC3(file, lineno);
	return REQ_NONE;
}