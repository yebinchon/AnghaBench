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
struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct paste_buffer {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {struct client* client; TYPE_1__ target; } ;
struct cmd {struct args* args; int /*<<< orphan*/ * entry; } ;
struct client {int flags; int /*<<< orphan*/  stdout_data; int /*<<< orphan*/ * session; } ;
struct args {int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CLIENT_CONTROL ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int INT_MAX ; 
 int VIS_OCTAL ; 
 int VIS_TAB ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 struct client* FUNC2 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cmd_show_buffer_entry ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char const*) ; 
 char* FUNC8 (struct cmdq_item*,int /*<<< orphan*/ ,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 size_t FUNC10 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,char,size_t) ; 
 char* FUNC12 (struct paste_buffer*,size_t*) ; 
 struct paste_buffer* FUNC13 (char const*) ; 
 struct paste_buffer* FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (struct client*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct client*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,size_t,int) ; 
 char* FUNC20 (char*,size_t) ; 
 char* FUNC21 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC22(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct client		*c = FUNC2(item, NULL, 1);
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	struct window_pane	*wp = item->target.wp;
	struct paste_buffer	*pb;
	const char		*bufname, *bufdata, *start, *end, *flags;
	char			*msg, *path, *file;
	size_t			 size, used, msglen, bufsize;
	FILE			*f;

	if (!FUNC1(args, 'b')) {
		if ((pb = FUNC14(NULL)) == NULL) {
			FUNC3(item, "no buffers");
			return (CMD_RETURN_ERROR);
		}
	} else {
		bufname = FUNC0(args, 'b');
		pb = FUNC13(bufname);
		if (pb == NULL) {
			FUNC3(item, "no buffer %s", bufname);
			return (CMD_RETURN_ERROR);
		}
	}
	bufdata = FUNC12(pb, &bufsize);

	if (self->entry == &cmd_show_buffer_entry)
		path = FUNC21("-");
	else
		path = FUNC8(item, args->argv[0], c, s, wl, wp);
	if (FUNC17(path, "-") == 0) {
		FUNC9(path);
		c = item->client;
		if (c == NULL) {
			FUNC3(item, "can't write to stdout");
			return (CMD_RETURN_ERROR);
		}
		if (c->session == NULL || (c->flags & CLIENT_CONTROL))
			goto do_stdout;
		goto do_print;
	}

	flags = "wb";
	if (FUNC1(self->args, 'a'))
		flags = "ab";

	file = FUNC15(item->client, path);
	FUNC9(path);

	f = FUNC7(file, flags);
	if (f == NULL) {
		FUNC3(item, "%s: %s", file, FUNC18(errno));
		FUNC9(file);
		return (CMD_RETURN_ERROR);
	}

	if (FUNC10(bufdata, 1, bufsize, f) != bufsize) {
		FUNC3(item, "%s: write error", file);
		FUNC6(f);
		FUNC9(file);
		return (CMD_RETURN_ERROR);
	}

	FUNC6(f);
	FUNC9(file);

	return (CMD_RETURN_NORMAL);

do_stdout:
	FUNC5(c->stdout_data, bufdata, bufsize);
	FUNC16(c);
	return (CMD_RETURN_NORMAL);

do_print:
	if (bufsize > (INT_MAX / 4) - 1) {
		FUNC3(item, "buffer too big");
		return (CMD_RETURN_ERROR);
	}
	msg = NULL;

	used = 0;
	while (used != bufsize) {
		start = bufdata + used;
		end = FUNC11(start, '\n', bufsize - used);
		if (end != NULL)
			size = end - start;
		else
			size = bufsize - used;

		msglen = size * 4 + 1;
		msg = FUNC20(msg, msglen);

		FUNC19(msg, start, size, VIS_OCTAL|VIS_TAB);
		FUNC4(item, "%s", msg);

		used += size + (end != NULL);
	}

	FUNC9(msg);
	return (CMD_RETURN_NORMAL);
}