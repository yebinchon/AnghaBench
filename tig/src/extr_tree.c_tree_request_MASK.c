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
struct view {int /*<<< orphan*/  pos; TYPE_1__* env; int /*<<< orphan*/  vid; } ;
struct tree_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct line {int type; struct tree_entry* data; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {scalar_t__* directory; int /*<<< orphan*/  file; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
#define  LINE_DIRECTORY 134 
#define  LINE_FILE 133 
 int OPEN_DEFAULT ; 
 int OPEN_SPLIT ; 
#define  REQ_BACK 132 
#define  REQ_EDIT 131 
#define  REQ_ENTER 130 
 int REQ_NONE ; 
#define  REQ_PARENT 129 
#define  REQ_VIEW_BLAME 128 
 int REQ_VIEW_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct view*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (struct line*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree_view_history ; 
 int /*<<< orphan*/  FUNC12 (struct view*) ; 

__attribute__((used)) static enum request
FUNC13(struct view *view, enum request request, struct line *line)
{
	enum open_flags flags;
	struct tree_entry *entry = line->data;

	switch (request) {
	case REQ_VIEW_BLAME:
		if (line->type != LINE_FILE) {
			FUNC7("Blame only supported for files");
			return REQ_NONE;
		}

		FUNC9(view->env->ref, view->vid);
		return request;

	case REQ_EDIT:
		if (line->type != LINE_FILE) {
			FUNC7("Edit only supported for files");
		} else if (!FUNC0(view->vid)) {
			FUNC1(entry->id, entry->name, 0);
		} else {
			FUNC3(view->env->file, 0);
		}
		return REQ_NONE;

	case REQ_PARENT:
	case REQ_BACK:
		if (!*view->env->directory) {
			/* quit view if at top of tree */
			return REQ_VIEW_CLOSE;
		}
		/* fake 'cd  ..' */
		FUNC4(&view->pos);
		FUNC6(view);
		return REQ_NONE;

	case REQ_ENTER:
		break;

	default:
		return request;
	}

	/* Cleanup the stack if the tree view is at a different tree. */
	if (!*view->env->directory)
		FUNC8(&tree_view_history);

	switch (line->type) {
	case LINE_DIRECTORY:
		/* Depending on whether it is a subdirectory or parent link
		 * mangle the path buffer. */
		if (FUNC11(entry->name) && *view->env->directory) {
			FUNC4(&view->pos);

		} else {
			const char *basename = FUNC10(line);

			FUNC5(view, basename, &view->pos);
		}

		/* Trees and subtrees share the same ID, so they are not not
		 * unique like blobs. */
		FUNC6(view);
		break;

	case LINE_FILE:
		flags = FUNC12(view) ? OPEN_SPLIT : OPEN_DEFAULT;
		FUNC2(view, flags);
		break;

	default:
		return REQ_NONE;
	}

	return REQ_NONE;
}