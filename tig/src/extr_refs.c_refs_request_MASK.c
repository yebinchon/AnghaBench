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
struct reference {struct ref* ref; } ;
struct ref {char* name; } ;
struct line {struct reference* data; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int /*<<< orphan*/  argv; int /*<<< orphan*/  env; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OPEN_PREPARED ; 
 int OPEN_SPLIT ; 
#define  REQ_ENTER 129 
 int REQ_NONE ; 
#define  REQ_REFRESH 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  encoding_arg ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ main_view ; 
 int /*<<< orphan*/  FUNC5 (struct view*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct view*) ; 
 int /*<<< orphan*/  FUNC7 (struct reference*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static enum request
FUNC10(struct view *view, enum request request, struct line *line)
{
	struct reference *reference = line->data;

	switch (request) {
	case REQ_REFRESH:
		FUNC3(true);
		FUNC6(view);
		return REQ_NONE;

	case REQ_ENTER:
	{
		const struct ref *ref = reference->ref;
		const char *all_references_argv[] = {
			FUNC0(encoding_arg, FUNC2(),
				"%(mainargs)", "",
				FUNC7(reference) ? "--all" : ref->name, "",
				FUNC9(), FUNC4())
		};

		if (!FUNC1(main_view.env, &main_view.argv, all_references_argv, false, false))
			FUNC8("Failed to format argument");
		else
			FUNC5(view, &main_view, OPEN_SPLIT | OPEN_PREPARED);
		return REQ_NONE;
	}
	default:
		return request;
	}
}