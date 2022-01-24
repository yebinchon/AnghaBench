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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_4__ {int /*<<< orphan*/  seen; } ;
struct TYPE_3__ {scalar_t__* head; int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 scalar_t__ SIZEOF_REV ; 
 int FUNC0 (char*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  default_encoding ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_diff_context ; 
 int /*<<< orphan*/  opt_diff_noprefix ; 
 int /*<<< orphan*/  opt_editor ; 
 int /*<<< orphan*/ * opt_file_args ; 
 int /*<<< orphan*/  opt_id_width ; 
 int /*<<< orphan*/  opt_log_follow ; 
 int /*<<< orphan*/  opt_log_options ; 
 int /*<<< orphan*/  opt_status_show_untracked_files ; 
 int /*<<< orphan*/  option_bind_command ; 
 int /*<<< orphan*/  option_color_command ; 
 int /*<<< orphan*/  option_set_command ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_1__ repo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__*,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

__attribute__((used)) static enum status_code
FUNC16(char *name, size_t namelen, char *value, size_t valuelen, void *data)
{
	if (!FUNC11(name, "i18n.commitencoding"))
		FUNC7(&default_encoding, value, false);

	else if (!FUNC11(name, "gui.encoding"))
		FUNC7(&default_encoding, value, true);

	else if (!FUNC11(name, "core.editor"))
		FUNC12(opt_editor, value, valuelen);

	else if (!FUNC11(name, "core.worktree"))
		FUNC12(repo.worktree, value, valuelen);

	else if (!FUNC11(name, "core.abbrev"))
		FUNC5(&opt_id_width, value, 0, SIZEOF_REV - 1);

	else if (!FUNC11(name, "diff.noprefix"))
		FUNC4(&opt_diff_noprefix, value);

	else if (!FUNC11(name, "status.showUntrackedFiles"))
		FUNC4(&opt_status_show_untracked_files, value);

	else if (!FUNC6(name, "tig.color."))
		FUNC10(name + 10, value, option_color_command);

	else if (!FUNC6(name, "tig.bind."))
		FUNC10(name + 9, value, option_bind_command);

	else if (!FUNC6(name, "tig."))
		FUNC10(name + 4, value, option_set_command);

	else if (!FUNC6(name, "color."))
		FUNC8(name + FUNC0("color."), value);

	else if (*repo.head && !FUNC6(name, "branch.") &&
		 !FUNC14(name + 7, repo.head, FUNC13(repo.head)))
		FUNC9(name + 7 + FUNC13(repo.head), value, valuelen);

	else if (!FUNC11(name, "diff.context")) {
		if (!FUNC3(&opt_diff_context)->seen)
			opt_diff_context = -FUNC2(value);

	} else if (!FUNC11(name, "format.pretty")) {
		if (!FUNC6(value, "format:") && FUNC15(value, "%C("))
			FUNC1(&opt_log_options, "--pretty=medium");

	} else if (!FUNC11(name, "log.follow") && opt_file_args && !opt_file_args[1])
		FUNC4(&opt_log_follow, value);

	return SUCCESS;
}