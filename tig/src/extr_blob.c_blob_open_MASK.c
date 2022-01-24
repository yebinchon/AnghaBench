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
struct view {char const** argv; TYPE_2__* ops; int /*<<< orphan*/  ref; TYPE_1__* env; int /*<<< orphan*/  encoding; struct blob_state* private; } ;
struct blob_state {int /*<<< orphan*/  file; scalar_t__* commit; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {char* commit; scalar_t__* file; int /*<<< orphan*/ * blob; } ;

/* Variables and functions */
 int OPEN_PREPARED ; 
 int OPEN_REFRESH ; 
 int /*<<< orphan*/  REQ_VIEW_TREE ; 
 int SIZEOF_STR ; 
 int FUNC0 (struct view*,int /*<<< orphan*/ *,char const**,int) ; 
 int /*<<< orphan*/  default_encoding ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static enum status_code
FUNC12(struct view *view, enum open_flags flags)
{
	struct blob_state *state = view->private;
	static const char *blob_argv[] = {
		"git", "cat-file", "blob", "%(blob)", NULL
	};
	const char **argv = (flags & (OPEN_PREPARED | OPEN_REFRESH)) ? view->argv : blob_argv;

	if (argv != blob_argv) {
		state->file = FUNC2(view->env->file);
		state->commit[0] = 0;
	}

	if (!state->file && !view->env->blob[0] && view->env->file[0]) {
		const char *commit = view->env->commit[0] && !FUNC10(view->env->commit)
				   ? view->env->commit : "HEAD";
		char blob_spec[SIZEOF_STR];
		const char *rev_parse_argv[] = {
			"git", "rev-parse", blob_spec, NULL
		};

		if (!FUNC8(blob_spec, "%s:%s", commit, view->env->file) ||
		    !FUNC5(rev_parse_argv, view->env->blob, sizeof(view->env->blob), NULL, false))
			return FUNC1("Failed to resolve blob from file name");

		FUNC9(state->commit, commit, FUNC11(commit));
	}

	if (!state->file && !view->env->blob[0])
		return FUNC1("No file chosen, press %s to open tree view",
			     FUNC4(view, REQ_VIEW_TREE));

	view->encoding = FUNC3(view->env->file, default_encoding);

	if (*view->env->file)
		FUNC6(view->ref, view->env->file);
	else
		FUNC7(view->ref, view->ops->id);

	return FUNC0(view, NULL, argv, flags);
}