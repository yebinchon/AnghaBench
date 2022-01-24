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
struct format_tree {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct client {int prompt_flags; void* prompt_data; int /*<<< orphan*/  (* prompt_inputcb ) (struct client*,void*,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  flags; TYPE_1__ tty; int /*<<< orphan*/  prompt_mode; scalar_t__ prompt_hindex; int /*<<< orphan*/  prompt_freecb; int /*<<< orphan*/  prompt_buffer; int /*<<< orphan*/  prompt_index; void* prompt_string; } ;
typedef  int /*<<< orphan*/  (* prompt_input_cb ) (struct client*,void*,char*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  prompt_free_cb ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_REDRAWSTATUS ; 
 int /*<<< orphan*/  FORMAT_NONE ; 
 int /*<<< orphan*/  PROMPT_ENTRY ; 
 int PROMPT_INCREMENTAL ; 
 int PROMPT_NOFORMAT ; 
 int TTY_FREEZE ; 
 int TTY_NOCURSOR ; 
 struct format_tree* FUNC0 (struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct client*) ; 
 int /*<<< orphan*/  FUNC6 (struct client*) ; 
 int /*<<< orphan*/  FUNC7 (struct client*) ; 
 int /*<<< orphan*/  FUNC8 (struct client*,void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**,char*,char*) ; 
 char* FUNC12 (char const*) ; 

void
FUNC13(struct client *c, const char *msg, const char *input,
    prompt_input_cb inputcb, prompt_free_cb freecb, void *data, int flags)
{
	struct format_tree	*ft;
	char			*tmp, *cp;

	ft = FUNC0(c, NULL, FORMAT_NONE, 0);
	FUNC1(ft, c, NULL, NULL, NULL);

	if (input == NULL)
		input = "";
	if (flags & PROMPT_NOFORMAT)
		tmp = FUNC12(input);
	else
		tmp = FUNC2(ft, input);

	FUNC5(c);
	FUNC6(c);
	FUNC7(c);

	c->prompt_string = FUNC2(ft, msg);

	c->prompt_buffer = FUNC9(tmp);
	c->prompt_index = FUNC10(c->prompt_buffer);

	c->prompt_inputcb = inputcb;
	c->prompt_freecb = freecb;
	c->prompt_data = data;

	c->prompt_hindex = 0;

	c->prompt_flags = flags;
	c->prompt_mode = PROMPT_ENTRY;

	if (~flags & PROMPT_INCREMENTAL)
		c->tty.flags |= (TTY_NOCURSOR|TTY_FREEZE);
	c->flags |= CLIENT_REDRAWSTATUS;

	if ((flags & PROMPT_INCREMENTAL) && *tmp != '\0') {
		FUNC11(&cp, "=%s", tmp);
		c->prompt_inputcb(c, c->prompt_data, cp, 0);
		FUNC4(cp);
	}

	FUNC4(tmp);
	FUNC3(ft);
}