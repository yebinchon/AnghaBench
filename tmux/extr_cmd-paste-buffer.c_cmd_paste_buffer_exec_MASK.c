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
struct window_pane {int flags; int /*<<< orphan*/  event; TYPE_2__* screen; } ;
struct paste_buffer {int dummy; } ;
struct TYPE_3__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int mode; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int MODE_BRACKETPASTE ; 
 int PANE_INPUTOFF ; 
 char* FUNC0 (struct args*,char) ; 
 int FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,char const*) ; 
 char* FUNC4 (char const*,char,int) ; 
 char* FUNC5 (struct paste_buffer*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct paste_buffer*) ; 
 struct paste_buffer* FUNC7 (char const*) ; 
 struct paste_buffer* FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC10(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct window_pane	*wp = item->target.wp;
	struct paste_buffer	*pb;
	const char		*sepstr, *bufname, *bufdata, *bufend, *line;
	size_t			 seplen, bufsize;
	int			 bracket = FUNC1(args, 'p');

	bufname = NULL;
	if (FUNC1(args, 'b'))
		bufname = FUNC0(args, 'b');

	if (bufname == NULL)
		pb = FUNC8(NULL);
	else {
		pb = FUNC7(bufname);
		if (pb == NULL) {
			FUNC3(item, "no buffer %s", bufname);
			return (CMD_RETURN_ERROR);
		}
	}

	if (pb != NULL && ~wp->flags & PANE_INPUTOFF) {
		sepstr = FUNC0(args, 's');
		if (sepstr == NULL) {
			if (FUNC1(args, 'r'))
				sepstr = "\n";
			else
				sepstr = "\r";
		}
		seplen = FUNC9(sepstr);

		if (bracket && (wp->screen->mode & MODE_BRACKETPASTE))
			FUNC2(wp->event, "\033[200~", 6);

		bufdata = FUNC5(pb, &bufsize);
		bufend = bufdata + bufsize;

		for (;;) {
			line = FUNC4(bufdata, '\n', bufend - bufdata);
			if (line == NULL)
				break;

			FUNC2(wp->event, bufdata, line - bufdata);
			FUNC2(wp->event, sepstr, seplen);

			bufdata = line + 1;
		}
		if (bufdata != bufend)
			FUNC2(wp->event, bufdata, bufend - bufdata);

		if (bracket && (wp->screen->mode & MODE_BRACKETPASTE))
			FUNC2(wp->event, "\033[201~", 6);
	}

	if (pb != NULL && FUNC1(args, 'd'))
		FUNC6(pb);

	return (CMD_RETURN_NORMAL);
}