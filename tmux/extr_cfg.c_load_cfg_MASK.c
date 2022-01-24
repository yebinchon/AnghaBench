#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {scalar_t__ status; int /*<<< orphan*/  cmdlist; int /*<<< orphan*/  error; } ;
struct cmd_parse_input {int flags; char const* file; int line; struct client* c; struct cmdq_item* item; } ;
struct client {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CMD_PARSE_EMPTY ; 
 scalar_t__ CMD_PARSE_ERROR ; 
 int CMD_PARSE_PARSEONLY ; 
 int CMD_PARSE_QUIET ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC2 (int /*<<< orphan*/ *,struct cmd_parse_input*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cmdq_item*) ; 
 struct cmdq_item* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_item*,struct cmdq_item*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_parse_input*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int
FUNC12(const char *path, struct client *c, struct cmdq_item *item, int flags,
    struct cmdq_item **new_item)
{
	FILE			*f;
	struct cmd_parse_input	 pi;
	struct cmd_parse_result	*pr;
	struct cmdq_item	*new_item0;

	if (new_item != NULL)
		*new_item = NULL;

	FUNC9("loading %s", path);
	if ((f = FUNC7(path, "rb")) == NULL) {
		if (errno == ENOENT && (flags & CMD_PARSE_QUIET))
			return (0);
		FUNC0("%s: %s", path, FUNC11(errno));
		return (-1);
	}

	FUNC10(&pi, 0, sizeof pi);
	pi.flags = flags;
	pi.file = path;
	pi.line = 1;
	pi.item = item;
	pi.c = c;

	pr = FUNC2(f, &pi);
	FUNC6(f);
	if (pr->status == CMD_PARSE_EMPTY)
		return (0);
	if (pr->status == CMD_PARSE_ERROR) {
		FUNC0("%s", pr->error);
		FUNC8(pr->error);
		return (-1);
	}
	if (flags & CMD_PARSE_PARSEONLY) {
		FUNC1(pr->cmdlist);
		return (0);
	}

	new_item0 = FUNC4(pr->cmdlist, NULL, NULL, 0);
	if (item != NULL)
		FUNC5(item, new_item0);
	else
		FUNC3(NULL, new_item0);
	FUNC1(pr->cmdlist);

	if (new_item != NULL)
		*new_item = new_item0;
	return (0);
}