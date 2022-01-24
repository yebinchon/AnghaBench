#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {int dummy; } ;
struct line {struct commit* data; } ;
struct commit {int /*<<< orphan*/  id; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int /*<<< orphan*/  argv; int /*<<< orphan*/  env; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OPEN_PREPARED ; 
 int OPEN_SPLIT ; 
#define  REQ_ENTER 128 
 int REQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  encoding_arg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct view*,int,struct line*) ; 
 TYPE_1__ main_view ; 
 int /*<<< orphan*/  FUNC5 (struct view*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static enum request
FUNC8(struct view *view, enum request request, struct line *line)
{
	struct commit *commit = line->data;

	switch (request) {
	case REQ_ENTER:
	{
		const char *main_argv[] = {
			FUNC0(encoding_arg, FUNC2(),
				"%(mainargs)", "", commit->id, "",
				FUNC7(), FUNC3())
		};

		if (!FUNC1(main_view.env, &main_view.argv, main_argv, false, false))
			FUNC6("Failed to format argument");
		else
			FUNC5(view, &main_view, OPEN_SPLIT | OPEN_PREPARED);
		return REQ_NONE;
	}

	default:
		return FUNC4(view, request, line);
	}
}