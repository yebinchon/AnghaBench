#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct view {int /*<<< orphan*/  ref; int /*<<< orphan*/  pipe; } ;
struct line {struct blame* data; } ;
struct blame {TYPE_1__* commit; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int /*<<< orphan*/ * parent_id; int /*<<< orphan*/  filename; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_ID ; 
 int OPEN_DEFAULT ; 
 int OPEN_SPLIT ; 
#define  REQ_BACK 131 
#define  REQ_ENTER 130 
 int REQ_NONE ; 
#define  REQ_PARENT 129 
#define  REQ_VIEW_BLAME 128 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct blame*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct blame*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct view diff_view ; 
 int /*<<< orphan*/  encoding_arg ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct view*,struct view*,char const**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct view*) ; 

__attribute__((used)) static enum request
FUNC13(struct view *view, enum request request, struct line *line)
{
	enum open_flags flags = FUNC12(view) ? OPEN_SPLIT : OPEN_DEFAULT;
	struct blame *blame = line->data;
	struct view *diff = &diff_view;

	switch (request) {
	case REQ_VIEW_BLAME:
	case REQ_PARENT:
		if (!FUNC4(blame, request == REQ_VIEW_BLAME))
			break;
		FUNC3(view, blame, request == REQ_PARENT);
		break;

	case REQ_BACK:
		FUNC2(view);
		break;

	case REQ_ENTER:
		if (!FUNC4(blame, false))
			break;

		if (FUNC12(diff) &&
		    !FUNC9(blame->commit->id, diff->ref))
			break;

		if (FUNC11(blame->commit->id)) {
			const char *diff_parent_argv[] = {
				FUNC0(encoding_arg,
					FUNC5(),
					FUNC6(),
					blame->commit->filename)
			};
			const char *diff_no_parent_argv[] = {
				FUNC1(encoding_arg,
					FUNC5(),
					FUNC6(),
					blame->commit->filename)
			};
			const char **diff_index_argv = *blame->commit->parent_id
				? diff_parent_argv : diff_no_parent_argv;

			FUNC7(view, diff, diff_index_argv, NULL, flags);
			if (diff->pipe)
				FUNC10(diff->ref, NULL_ID);
		} else {
			FUNC8(view, flags);
		}
		break;

	default:
		return request;
	}

	return REQ_NONE;
}