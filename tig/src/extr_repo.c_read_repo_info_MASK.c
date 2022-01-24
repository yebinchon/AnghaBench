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
struct repo_info_state {scalar_t__* argv; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int is_inside_work_tree; int /*<<< orphan*/ * head; int /*<<< orphan*/  remote; int /*<<< orphan*/ * head_id; int /*<<< orphan*/ * prefix; int /*<<< orphan*/ * cdup; int /*<<< orphan*/ * exec_dir; int /*<<< orphan*/ * git_dir; } ;

/* Variables and functions */
 char* REPO_INFO_GIT_DIR ; 
 char* REPO_INFO_RESOLVED_HEAD ; 
 char* REPO_INFO_SHOW_CDUP ; 
 char* REPO_INFO_SHOW_PREFIX ; 
 char* REPO_INFO_SYMBOLIC_HEAD ; 
 char* REPO_INFO_WORK_TREE ; 
 int FUNC0 (char*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__ repo ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static enum status_code
FUNC7(char *name, size_t namelen, char *value, size_t valuelen, void *data)
{
	struct repo_info_state *state = data;
	const char *arg = *state->argv ? *state->argv++ : "";

	if (!FUNC4(arg, REPO_INFO_GIT_DIR)) {
		FUNC5(repo.git_dir, name, namelen);

	} else if (!FUNC4(arg, REPO_INFO_WORK_TREE)) {
		/* This can be 3 different values depending on the
		 * version of git being used. If git-rev-parse does not
		 * understand --is-inside-work-tree it will simply echo
		 * the option else either "true" or "false" is printed.
		 * Default to true for the unknown case. */
		repo.is_inside_work_tree = FUNC4(name, "false") ? true : false;

	} else if (!FUNC4(arg, REPO_INFO_SHOW_CDUP)) {
		FUNC5(repo.cdup, name, namelen);
		if (repo.is_inside_work_tree)
			FUNC5(repo.exec_dir, name, namelen);

	} else if (!FUNC4(arg, REPO_INFO_SHOW_PREFIX)) {
		/* Some versions of Git does not emit anything for --show-prefix
		 * when the user is in the repository root directory. Try to detect
		 * this special case by looking at the emitted value. If it looks
		 * like a commit ID and there's no cdup path assume that no value
		 * was emitted. */
		if (!*repo.cdup && namelen == 40 && FUNC2(name))
			return FUNC7(name, namelen, value, valuelen, data);

		FUNC5(repo.prefix, name, namelen);

	} else if (!FUNC4(arg, REPO_INFO_RESOLVED_HEAD)) {
		FUNC5(repo.head_id, name, namelen);

	} else if (!FUNC4(arg, REPO_INFO_SYMBOLIC_HEAD)) {
		if (!FUNC3(name, "refs/heads/")) {
			const char *head = name + FUNC0("refs/heads/");

			FUNC5(repo.head, head, FUNC6(head) + 1);
			FUNC1(repo.head_id, name, repo.remote, repo.head);
		}
		state->argv++;
	}

	return SUCCESS;
}