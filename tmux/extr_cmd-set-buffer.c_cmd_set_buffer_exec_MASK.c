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
struct paste_buffer {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct args {int argc; char const** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_delete_buffer_entry ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 char* FUNC5 (struct paste_buffer*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct paste_buffer*) ; 
 struct paste_buffer* FUNC7 (char const*) ; 
 struct paste_buffer* FUNC8 (char const**) ; 
 scalar_t__ FUNC9 (char const*,char*,char**) ; 
 scalar_t__ FUNC10 (char*,size_t,char const*,char**) ; 
 size_t FUNC11 (char const*) ; 
 char* FUNC12 (size_t) ; 
 char* FUNC13 (char*,size_t) ; 

__attribute__((used)) static enum cmd_retval
FUNC14(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct paste_buffer	*pb;
	char			*bufdata, *cause;
	const char		*bufname, *olddata;
	size_t			 bufsize, newsize;

	bufname = FUNC0(args, 'b');
	if (bufname == NULL)
		pb = NULL;
	else
		pb = FUNC7(bufname);

	if (self->entry == &cmd_delete_buffer_entry) {
		if (pb == NULL)
			pb = FUNC8(&bufname);
		if (pb == NULL) {
			FUNC2(item, "no buffer");
			return (CMD_RETURN_ERROR);
		}
		FUNC6(pb);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'n')) {
		if (pb == NULL)
			pb = FUNC8(&bufname);
		if (pb == NULL) {
			FUNC2(item, "no buffer");
			return (CMD_RETURN_ERROR);
		}
		if (FUNC9(bufname, FUNC0(args, 'n'), &cause) != 0) {
			FUNC2(item, "%s", cause);
			FUNC3(cause);
			return (CMD_RETURN_ERROR);
		}
		return (CMD_RETURN_NORMAL);
	}

	if (args->argc != 1) {
		FUNC2(item, "no data specified");
		return (CMD_RETURN_ERROR);
	}
	if ((newsize = FUNC11(args->argv[0])) == 0)
		return (CMD_RETURN_NORMAL);

	bufsize = 0;
	bufdata = NULL;

	if (FUNC1(args, 'a') && pb != NULL) {
		olddata = FUNC5(pb, &bufsize);
		bufdata = FUNC12(bufsize);
		FUNC4(bufdata, olddata, bufsize);
	}

	bufdata = FUNC13(bufdata, bufsize + newsize);
	FUNC4(bufdata + bufsize, args->argv[0], newsize);
	bufsize += newsize;

	if (FUNC10(bufdata, bufsize, bufname, &cause) != 0) {
		FUNC2(item, "%s", cause);
		FUNC3(bufdata);
		FUNC3(cause);
		return (CMD_RETURN_ERROR);
	}

	return (CMD_RETURN_NORMAL);
}