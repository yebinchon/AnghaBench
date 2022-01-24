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
struct stat {int dummy; } ;
struct ref {char const* name; } ;
struct io {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* head; char* head_id; scalar_t__* remote; int /*<<< orphan*/  git_dir; } ;

/* Variables and functions */
 int FUNC0 (char const***) ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ref* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct io*,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (struct io*,char*,int,int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 TYPE_1__ repo ; 
 scalar_t__ FUNC8 (char*,int,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  status_onbranch ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,char const*,char const*,...) ; 

__attribute__((used)) static void
FUNC12(void)
{
	static const char *paths[][3] = {
		{ "rebase-apply/rebasing",	"rebase-apply/head-name",	"Rebasing" },
		{ "rebase-apply/applying",	"rebase-apply/head-name",	"Applying mailbox to" },
		{ "rebase-apply/",		"rebase-apply/head-name",	"Rebasing mailbox onto" },
		{ "rebase-merge/interactive",	"rebase-merge/head-name",	"Interactive rebase" },
		{ "rebase-merge/",		"rebase-merge/head-name",	"Rebase merge" },
		{ "MERGE_HEAD",			NULL,				"Merging" },
		{ "BISECT_LOG",			NULL,				"Bisecting" },
		{ "HEAD",			NULL,				"On branch" },
	};
	char buf[SIZEOF_STR];
	struct stat stat;
	int i;

	if (FUNC5()) {
		FUNC10(status_onbranch, "Initial commit");
		return;
	}

	for (i = 0; i < FUNC0(paths); i++) {
		const char *prefix = paths[i][2];
		const char *head = repo.head;
		const char *tracking_info = "";

		if (!FUNC11(buf, "%s/%s", repo.git_dir, paths[i][0]) ||
		    FUNC6(buf, &stat) < 0)
			continue;

		if (paths[i][1]) {
			struct io io;

			if (FUNC3(&io, "%s/%s", repo.git_dir, paths[i][1]) &&
			    FUNC4(&io, buf, sizeof(buf), false)) {
				head = buf;
				if (!FUNC7(head, "refs/heads/"))
					head += FUNC1("refs/heads/");
			}
		}

		if (!*head && !FUNC9(paths[i][0], "HEAD") && *repo.head_id) {
			const struct ref *ref = FUNC2(repo.head_id);

			prefix = "HEAD detached at";
			head = repo.head_id;

			if (ref && FUNC9(ref->name, "HEAD"))
				head = ref->name;
		} else if (!paths[i][1] && *repo.remote) {
			if (FUNC8(buf, sizeof(buf),
							head, repo.remote)) {
				tracking_info = buf;
			}
		}

		const char *fmt = *tracking_info == '\0' ? "%s %s" : "%s %s. %s";

		if (!FUNC11(status_onbranch, fmt,
				   prefix, head, tracking_info))
			FUNC10(status_onbranch, repo.head);
		return;
	}

	FUNC10(status_onbranch, "Not currently on any branch");
}